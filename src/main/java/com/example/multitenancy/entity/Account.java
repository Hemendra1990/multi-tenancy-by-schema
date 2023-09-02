package com.example.multitenancy.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "e_account")
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column
    private String name;

    @OneToMany(mappedBy = "account")
    private List<Contact> contacts;
}
