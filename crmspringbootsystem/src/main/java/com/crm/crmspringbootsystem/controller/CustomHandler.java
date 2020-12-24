package com.crm.crmspringbootsystem.controller;

import com.crm.crmspringbootsystem.entity.Custom;
import com.crm.crmspringbootsystem.repository.CustomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;



@RestController
@RequestMapping("/custom")
public class CustomHandler {
    @Autowired
    private CustomRepository customRepository;

    @GetMapping("/findAll/{page}/{size}")
    public Page<Custom> findAll(@PathVariable("page") Integer page, @PathVariable("size") Integer size){
        Pageable request = PageRequest.of(page-1,size);
            return customRepository.findAll(request);
    }

    @PostMapping("/save")
    public String save(@RequestBody Custom custom){
        Custom result = customRepository.save(custom);
        if(result != null)
        {
            return "success";
        }
        else
        {
            return "error";
        }
    }
    @GetMapping("/findById/{id}")
    public Custom findById(@PathVariable("id") Integer id){
        return customRepository.findById(id).get();

    }

    @DeleteMapping("/deleteById/{id}")
    public void deleteById(@PathVariable("id") Integer id){
        customRepository.deleteById(id);

    }
}
