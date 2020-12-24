package com.crm.crmspringbootsystem.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Login {
    @Id
    private String username;
    private String password;

}
