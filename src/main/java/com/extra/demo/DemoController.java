package com.extra.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/mysite")

public class DemoController {

    @GetMapping("/")
    public String hello() {
        return "<html>Hello World!</html>";
    }

    @GetMapping("/sitemap.xml")
    public String index() {

        String s = """
                
                <?xml version="1.0" encoding="UTF-8"?>
                
                <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
                
                   <url>
                
                      <loc>http://www.example.com/</loc>
                
                      <lastmod>2005-01-01</lastmod>
                
                      <changefreq>monthly</changefreq>
                
                      <priority>0.8</priority>
                
                   </url>
                
                </urlset>
                """;

        return s;
    }

    @GetMapping("/robots.txt")
    public String index2() {
        return "Hello World!";
    }


}
