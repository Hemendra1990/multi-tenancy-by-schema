package com.example.multitenancy.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "e_contact")
public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column
    private String name;

    @ManyToOne
    Account account;
}
