package com.extra.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @GetMapping("/hello")
    public String hello() {
        return "Hello World!";
    }

    @GetMapping("/")
    public String index() {
        return "Hello World!";
    }

    @GetMapping("/robots.txt")
    public String robots() {
        return "Hello World!";
    }

    @GetMapping("/sitemap.xml")
    public String sitemap() {
        return "Hello World!";
    }

}
