package com.example.multitenancy.config;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.Map;

@Component
public class ApplicationContextService implements ApplicationContextAware {

    private ApplicationContext applicationContext;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

    public void setNewDataSourceInAbstractRoutingDatasource(String schemaName, DataSource newDatasource) {
        MultiTenantDataSource multiTenantDataSource = applicationContext.getBean(MultiTenantDataSource.class);
        final Map<Object, Object> targetDatasourcesForHouseKeeping = multiTenantDataSource.getTargetDatasourcesForHouseKeeping();
        if (newDatasource != null) {
            targetDatasourcesForHouseKeeping.put(schemaName, newDatasource);
            multiTenantDataSource.setTargetDataSources(targetDatasourcesForHouseKeeping);
            multiTenantDataSource.afterPropertiesSet(); // Ensure the data source is properly refreshed
        } else {
            throw new IllegalArgumentException("Tenant ID does not exist: " + schemaName);
        }
    }
}
