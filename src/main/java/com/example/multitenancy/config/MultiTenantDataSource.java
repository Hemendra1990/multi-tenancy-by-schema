package com.example.multitenancy.config;

import com.example.multitenancy.context.TenantContextHolder;
import com.example.multitenancy.controller.MultiTenantRoutingController;
import com.example.multitenancy.controller.test.existing.entity.AccountController;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.Map;


public class MultiTenantDataSource extends AbstractRoutingDataSource {

    private Map<Object, Object> targetDatasourcesForHouseKeeping = new HashMap<>();

    public Map<Object, Object> getTargetDatasourcesForHouseKeeping() {
        return targetDatasourcesForHouseKeeping;
    }

    public void setTargetDatasourcesForHouseKeeping(Map<Object, Object> targetDatasourcesForHouseKeeping) {
        this.targetDatasourcesForHouseKeeping = targetDatasourcesForHouseKeeping;
    }

    @Override
    protected Object determineCurrentLookupKey() {
        // Use a strategy to determine the current user or tenant identifier
        String currentUserOrTenant = determineCurrentUserOrTenant();
        return currentUserOrTenant;
    }

    private String determineCurrentUserOrTenant() {
        final String username = TenantContextHolder.getTenant();
        // Implement logic to determine the current user or tenant identifier
        // This could be based on a session attribute, authentication, or other criteria
        // Return a String that identifies the current user or tenant
        if(StringUtils.isEmpty(username) || "default".equals(username)) {
            return "default";
        }
        return username ; // Replace with actual logic
    }


}
