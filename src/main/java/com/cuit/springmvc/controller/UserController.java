package com.cuit.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/save")
    @ResponseBody
    public String save(String name,int age){
        System.out.println("user save ==>" + name);
        System.out.println("age == > " + age);
        return "{'info':'springmvc'}";
    }

    @RequestMapping("/delete")
    @ResponseBody
    public String delete(){
        System.out.println("user delete..");
        return "{'info':'delete success'}";
    }

    @RequestMapping("list")
    @ResponseBody
    public String listParamForJson(@RequestParam List<String> likes){
        System.out.println("list common json 参数传递==>"+likes);

        return "{'module':'list common for json param'}";
    }

}
