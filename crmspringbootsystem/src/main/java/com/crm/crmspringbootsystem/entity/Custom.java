package com.crm.crmspringbootsystem.entity;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
public class Custom {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private String source;
    private String work;
    private String level;
    private String tel;
    private String phone;
    private String code;
    private String address;
}
