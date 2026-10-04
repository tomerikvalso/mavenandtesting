package com.extra.demo;

 import org.springframework.http.HttpHeaders;
 import org.springframework.http.HttpStatus;
 import org.springframework.http.ResponseEntity;
 import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @GetMapping("/hello")
    public ResponseEntity hello() {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.set("Cross-Origin-Embedder-Policy", "require-corp");
        responseHeaders.set("X-Content-Type-Options","nosniff");
        responseHeaders.set("Content-Security-Policy", "frame-ancestors 'none'");
        responseHeaders.set("Cache-Control","public, max-age:120, immutable");
        responseHeaders.set("Access-Control-Max-Age", "600");
        responseHeaders.set("Max-Age", "600");

        return new ResponseEntity<String>("Hello World", responseHeaders, HttpStatus.OK);
    }

    @GetMapping("/2")
    public String index() {
        return "Hello World!";
    }


}
