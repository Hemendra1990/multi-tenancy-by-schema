package com.example.multitenancy.repo;

import com.example.multitenancy.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EAccountRepo extends JpaRepository<Account, Long> {
}
