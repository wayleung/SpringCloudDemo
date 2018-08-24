package com.way.springboot.controller;

import com.way.springboot.bean.GirlProperties;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class HelloController {

    @Resource
    GirlProperties girlProperties;

    @RequestMapping(value = {"/helloworld","/hiworld"},method = RequestMethod.GET)
    public String say(){
        return "hi you!!"+girlProperties.getName()+girlProperties.getAge();
    }

}
