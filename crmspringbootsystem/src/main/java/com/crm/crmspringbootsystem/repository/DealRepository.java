package com.crm.crmspringbootsystem.repository;


import com.crm.crmspringbootsystem.entity.Deal;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DealRepository extends JpaRepository<Deal,Integer> {
}

