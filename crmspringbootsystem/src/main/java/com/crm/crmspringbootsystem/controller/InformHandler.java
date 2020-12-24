package com.crm.crmspringbootsystem.controller;

import com.crm.crmspringbootsystem.entity.Deal;
import com.crm.crmspringbootsystem.entity.Inform;
import com.crm.crmspringbootsystem.repository.DealRepository;
import com.crm.crmspringbootsystem.repository.InformRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/inform")
public class InformHandler {
    @Autowired
    private InformRepository informRepository;

    @GetMapping("/findAll/{page}/{size}")
    public Page<Inform> findAll(@PathVariable("page") Integer page, @PathVariable("size") Integer size){
        Pageable request = PageRequest.of(page-1,size);
        return informRepository.findAll(request);
    }

    @PostMapping("/save")
    public String save(@RequestBody Inform inform){
        Inform result = informRepository.save(inform);
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
    public Inform findById(@PathVariable("id") Integer id){
        return informRepository.findById(id).get();

    }

    @DeleteMapping("/deleteById/{id}")
    public void deleteById(@PathVariable("id") Integer id){
        informRepository.deleteById(id);

    }
}