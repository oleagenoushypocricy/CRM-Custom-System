package com.crm.crmspringbootsystem.controller;


import com.crm.crmspringbootsystem.entity.Deal;
import com.crm.crmspringbootsystem.repository.DealRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/deal")
public class DealHandler {
    @Autowired
    private DealRepository dealRepository;

    @GetMapping("/findAll/{page}/{size}")
    public Page<Deal> findAll(@PathVariable("page") Integer page, @PathVariable("size") Integer size){
        Pageable request = PageRequest.of(page-1,size);
        return dealRepository.findAll(request);
    }

    @PostMapping("/save")
    public String save(@RequestBody Deal deal){
        Deal result = dealRepository.save(deal);
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
    public Deal findById(@PathVariable("id") Integer id){
        return dealRepository.findById(id).get();

    }

    @DeleteMapping("/deleteById/{id}")
    public void deleteById(@PathVariable("id") Integer id){
        dealRepository.deleteById(id);

    }
}
