package com.training.platform.controllers;

import com.training.platform.entities.User;
import com.training.platform.repositories.UserRepository;
import com.training.platform.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("/demo")
public class DemoController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @GetMapping(value = "")
    public List<User> index() throws Exception {
        return userService.findAllByJpqlParamsQuery(0, "bangkok");
    }

    @GetMapping(value = "/create")
    public String create() throws Exception {
        return "Method Get, Function : create => HTML Render Form Create Page";
    }

    @PostMapping(value = "")
    public String store(@RequestParam Map<String,String> inputs) throws Exception {
        System.out.println("########### POST Param ###########");
        System.out.println(inputs);

        return "Method Post, Function : store => Receive post param and INSERT data to DB";
    }

    @GetMapping(value = "/{id}")
    public Optional<User> show(@PathVariable String id) throws Exception {
        Optional<User> user = userService.findById(Integer.parseInt(id));
        return user;
    }

    @GetMapping(value = "/{id}/edit")
    public String edit(@PathVariable String id) throws Exception {
        return "Method Get, Function : edit, ID : "+ id +" => HTML Render Form Edit Page from DB by ID";
    }

    @PutMapping(value = "/{id}")
    public String update(@PathVariable String id, @RequestParam Map<String,String> inputs) throws Exception {
        System.out.println("########### PUT Param ###########");
        System.out.println(inputs);

        return "Method PUT, Function : update => Receive id and PUT param and UPDATE data to DB";
    }

    @DeleteMapping(value = "/{id}")
    public void destroy(@PathVariable String id) throws Exception {
        userRepository.deleteById(Integer.parseInt(id));
    }

}

