package com.example.multitenancy.controller.test.existing.entity;

import com.example.multitenancy.context.TenantContextHolder;
import com.example.multitenancy.controller.MultiTenantRoutingController;
import com.example.multitenancy.entity.Account;
import com.example.multitenancy.repo.EAccountRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/existing-annotated-entity")
public class AccountController {

    private static final Logger log = LoggerFactory.getLogger(MultiTenantRoutingController.class);


    @Autowired
    private EAccountRepo accountRepo;

    @GetMapping("/{tenantId}")
    public List<Account> getAccounts(@PathVariable("tenantId") String tenantId) {
        TenantContextHolder.setTenant(tenantId);
        final List<Account> all = accountRepo.findAll();
        TenantContextHolder.remove();
        return all;
    }

    @PostMapping("/{tenantId}")
    public Account createAccount(@PathVariable("tenantId") String tenantId, @RequestBody Account account) {
        TenantContextHolder.setTenant(tenantId);
        final Account saved = accountRepo.save(account);
        TenantContextHolder.remove();
        return saved;
    }
}
