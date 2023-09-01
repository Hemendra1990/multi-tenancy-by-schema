package com.example.multitenancy.repo;

import com.example.multitenancy.entity.CollegeTest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CollegeTestRepo extends JpaRepository<CollegeTest, Long> {
}
