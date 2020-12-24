package com.crm.crmspringbootsystem.controller;

import com.crm.crmspringbootsystem.repository.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class LoginHandler {
    @Autowired
    private LoginRepository loginRepository;
}
