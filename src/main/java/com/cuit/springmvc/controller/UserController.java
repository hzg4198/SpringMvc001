package com.cuit.springmvc.controller;

import com.cuit.springmvc.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    @PostMapping
    public String save(@RequestBody User user){
        System.out.println(user);
        return "{'info':'springmvc'}";
    }

    @DeleteMapping
    public String delete(){
        System.out.println("user delete..");
        return "{'info':'delete success'}";
    }

}
