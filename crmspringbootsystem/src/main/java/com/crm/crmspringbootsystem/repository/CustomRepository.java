package com.crm.crmspringbootsystem.repository;


import com.crm.crmspringbootsystem.entity.Custom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomRepository extends JpaRepository<Custom,Integer> {
}
