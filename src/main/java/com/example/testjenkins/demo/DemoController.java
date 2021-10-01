package com.example.testjenkins.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    @GetMapping(path = "/home")
    public String home(){
        return "home";
    }

    @GetMapping(path = "/test")
    public String test(){
        return "test";
    }
}
