package com.crm.crmspringbootsystem.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class CustomRepositoryTest {
    @Autowired
    private CustomRepository customRepository;
    @Test
    void findAll(){
        System.out.println(customRepository.findAll());
    }
}