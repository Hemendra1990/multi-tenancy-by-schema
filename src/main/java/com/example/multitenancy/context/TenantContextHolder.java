package com.example.multitenancy.context;

public class TenantContextHolder {
    private static final InheritableThreadLocal<String> holder
            = new InheritableThreadLocal<>();

    private TenantContextHolder() {}

    public static final void setTenant(String tenantId) {
        holder.set(tenantId);
    }

    public static final String getTenant() {
        return holder.get();
    }

    public static final void remove() {
        holder.remove();
    }

}
