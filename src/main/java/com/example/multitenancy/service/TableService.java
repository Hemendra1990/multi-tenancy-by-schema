package com.example.multitenancy.service;

import com.example.multitenancy.config.ApplicationContextService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Service
public class TableService {
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
            DataSource ds = DataSourceBuilder.create()
                    .url( "jdbc:postgresql://localhost:5432/keycloak?currentSchema=" + schemaName)
                    .username("postgres")
                    .password("postgres")
                    .driverClassName("org.postgresql.Driver") // Replace with your database driver
                    .build();

            contextService.setNewDataSourceInAbstractRoutingDatasource(schemaName, ds);
        } catch (Exception e){
            return "Unable to create Schema.";
        }


        return null;
    }
}
