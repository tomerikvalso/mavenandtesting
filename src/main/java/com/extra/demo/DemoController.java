package com.extra.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @GetMapping("/mysite/hello")
    public String hello() {
        return "Hello World!";
    }

    @GetMapping("/mysite/2")
    public String index() {
        return "Hello World!";
    }


}
