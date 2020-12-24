package com.crm.crmspringbootsystem.repository;

import com.crm.crmspringbootsystem.entity.Login;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoginRepository extends JpaRepository<Login,String> {
}
