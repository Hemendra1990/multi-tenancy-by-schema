package com.example.multitenancy.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Random;
import java.util.UUID;

@Entity
@Table(name = "college_test2")
@AllArgsConstructor
@Data
@ToString
public class CollegeTest {

    public CollegeTest() {
        this.id = UUID.randomUUID().toString();
    }

    @Id
    public String id;

    @Column
    public String name;

    @Column
    public String website;

}
