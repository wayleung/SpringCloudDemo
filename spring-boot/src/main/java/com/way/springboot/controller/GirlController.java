package com.way.springboot.controller;

import com.way.springboot.bean.Girl;
import com.way.springboot.dao.GirlRep;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class GirlController {

    @Resource
    private GirlRep girlRep;

    /**
     *
     * @return
     */
    @RequestMapping(value = "/girls",method = RequestMethod.GET)
    public List<Girl> getGirlList(){
        return girlRep.findAll();
    }

    /**
     *
     * @param cupSize
     * @param age
     * @return
     */
    @RequestMapping(value = "/girl",method = RequestMethod.POST)
    public Girl addGirl(@RequestParam("cupSize")String cupSize,@RequestParam("age") Integer age){
        Girl girl = new Girl();
        girl.setAge(age);
        girl.setCupSize(cupSize);
        return girlRep.save(girl);
    }


}
