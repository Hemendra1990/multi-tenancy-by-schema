package com.example.multitenancy.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

@Configuration
public class DataSourceConfig {


    /**
     *
     * This is creating hardcoded datasources....
     *
     * But In production we will be implementing our logic
     * so that any newly created schema will be stored in some table and from there we will be creating the datasources
     *
     * @return
     */
    @Bean
    public DataSource dataSource() {
        MultiTenantDataSource multiTenantDataSource = new MultiTenantDataSource();
        Map<Object, Object> targetDataSources = new HashMap<>();

        // Create and configure data sources for each user
        DataSource user1DataSource = createDataSource("jdbc:postgresql://localhost:5432/keycloak", "postgres", "postgres", "user1");
        DataSource user2DataSource = createDataSource("jdbc:postgresql://localhost:5432/keycloak", "postgres", "postgres", "user2");
        DataSource defaultDS = createDataSource("jdbc:postgresql://localhost:5432/keycloak", "postgres", "postgres");

        targetDataSources.put("user1", user1DataSource);
        targetDataSources.put("user2", user2DataSource);
        targetDataSources.put("default", defaultDS);

        multiTenantDataSource.setTargetDataSources(targetDataSources);//Add list of datasources to Abstract Routing Datasource
        multiTenantDataSource.setDefaultTargetDataSource(user1DataSource); // Set a default data source


        //This is Hemendra's logic to keep track of what are the existting datasoruces
        multiTenantDataSource.setTargetDatasourcesForHouseKeeping(targetDataSources);

        return multiTenantDataSource;
    }

    private DataSource createDataSource(String url, String username, String password, String currentSchema) {
        return DataSourceBuilder.create()
                .url(url + "?currentSchema=" + currentSchema)
                .username(username)
                .password(password)
                .driverClassName("org.postgresql.Driver") // Replace with your database driver
                .build();
    }


    //Default Datasource handler
    private DataSource createDataSource(String url, String username, String password) {
        return DataSourceBuilder.create()
                .url(url)
                .username(username)
                .password(password)
                .driverClassName("org.postgresql.Driver")
                .build();
    }
}
