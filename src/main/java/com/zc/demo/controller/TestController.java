package com.zc.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {


    @RequestMapping(method = RequestMethod.GET, value = "/")
    public String getInfo(){
        return "Hello Docker(this is my first app was deployed in docker!)";
    }
}
