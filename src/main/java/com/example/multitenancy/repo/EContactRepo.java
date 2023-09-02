package com.example.multitenancy.repo;

import com.example.multitenancy.entity.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EContactRepo extends JpaRepository<Contact, Long> {
}
