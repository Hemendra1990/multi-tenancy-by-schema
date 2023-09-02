package com.example.multitenancy.service;

import com.example.multitenancy.config.ApplicationContextService;
import jakarta.transaction.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.stream.Collectors;

@Service
public class TableService {

    private static final Logger log = LoggerFactory.getLogger(TableService.class);

    @Autowired
    private DataSource dataSource;

    public String createTable(String tableQuery) {
        try(final Connection connection = dataSource.getConnection();
            final PreparedStatement preparedStatement = connection.prepareStatement(tableQuery)
        ) {
            preparedStatement.execute();
        } catch (Exception e){
            return "Unable to create tables!!";
        }
        return "Table successfully created.";
    }

    public String insertIntoTable(String insertQuery) {
        try(final Connection connection = dataSource.getConnection();
            final PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)
        ) {
            preparedStatement.execute();
        } catch (Exception e){
            return "Unable to insert into table!!";
        }
        return "Data Inserted Successfully";
    }

    public String createSchema(String schemaName) {
        StringBuilder sb = new StringBuilder("CREATE SCHEMA ").append(schemaName);
        try(final Connection connection = dataSource.getConnection();
            final PreparedStatement preparedStatement = connection.prepareStatement(sb.toString())
        ) {
            preparedStatement.execute();
        } catch (Exception e){
            return "Unable to create Schema.";
        }

        return schemaName;
    }

    private boolean schemaExists(String schemaName) {
        String sql = "SELECT 1 FROM pg_namespace WHERE nspname = ?";
        try(final Connection connection = dataSource.getConnection();
            final PreparedStatement preparedStatement = connection.prepareStatement(sql)
        ) {
            final ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
                final int result = resultSet.getInt(1);
                return result == 1;
            }
            return false;
        } catch (Exception e){
            return false;
        }
    }


    /**
     * Trying to update the existing AbstractRoutingDatsource programmatically
     * @param schemaName
     * @return
     */

    @Autowired
    private ApplicationContextService contextService;

    public String createSchemaAndRoutingDatasource(String schemaName) {
        StringBuilder sb = new StringBuilder("CREATE SCHEMA ").append(schemaName);
        try(final Connection connection = dataSource.getConnection();
            final PreparedStatement preparedStatement = connection.prepareStatement(sb.toString())
        ) {
            preparedStatement.execute();
            //Cfreate the datasource
            DataSource newDatasource = DataSourceBuilder.create()
                    .url( "jdbc:postgresql://localhost:5432/keycloak?currentSchema=" + schemaName)
                    .username("postgres")
                    .password("postgres")
                    .driverClassName("org.postgresql.Driver") // Replace with your database driver
                    .build();

            contextService.setNewDataSourceInAbstractRoutingDatasource(schemaName, newDatasource);

            //Create tables for the newly created schema
            try {
                generateTablesFromSchemaSql(schemaName, newDatasource);
            } catch (Exception e) {
                e.printStackTrace();
                log.error(e.getMessage(), e);
            }
        } catch (Exception e){
            return "Unable to create Schema.";
        }
        return null;
    }

    /**
     * Populate all the tables in the newly created schema
     *
     * @param newSchema
     * @param dataSource
     */
    public void generateTablesFromSchemaSql(String newSchema, DataSource dataSource) {
        try {
            Resource resource = new ClassPathResource("schema/crm-schema.sql");
            InputStreamReader reader = new InputStreamReader(resource.getInputStream());
            String sqlScript = new BufferedReader(reader)
                    .lines()
                    .collect(Collectors.joining("\n"));

            String searchPathSql = "SET search_path TO "+ newSchema;

            try(final Connection connection = dataSource.getConnection();
                final PreparedStatement setSearchPathPreparedStament = connection.prepareStatement(searchPathSql); //Set so that we won't be getting "org.postgresql.util.PSQLException: ERROR: no schema has been selected to create in"
                final PreparedStatement preparedStatement = connection.prepareStatement(sqlScript)
            ) {
                setSearchPathPreparedStament.execute();
                preparedStatement.execute() ;
            }
        } catch (Exception e) {
            // Handle any exceptions, such as SQL syntax errors
            e.printStackTrace();
            throw new RuntimeException("Error executing schema.sql: " + e.getMessage());
        }
    }
}
