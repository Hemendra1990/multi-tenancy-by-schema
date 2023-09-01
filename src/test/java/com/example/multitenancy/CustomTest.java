package com.example.multitenancy;

import com.example.multitenancy.entity.CollegeTest;
import com.example.multitenancy.repo.CollegeTestRepo;
import com.zaxxer.hikari.HikariDataSource;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CustomTest {

    @Autowired
    private CollegeTestRepo testRepo;

    @Test
    public void testPost() {
        CollegeTest collegeTest = new CollegeTest();
        collegeTest.setName("Hrmendra");
        collegeTest.setWebsite("www.google.com");

        final CollegeTest test = testRepo.save(collegeTest);

        System.out.println(test);
    }
}
