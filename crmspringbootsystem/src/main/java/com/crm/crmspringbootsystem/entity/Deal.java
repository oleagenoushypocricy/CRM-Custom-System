package com.crm.crmspringbootsystem.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Data
@Entity
public class Deal {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Integer id;
        private String name;
        private String custom;
        private String address;
        private String phone;
        private Integer time;
        private String worker;
        private String number;
        private String state;


}
