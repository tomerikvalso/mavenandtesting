package com.extra.demo;

 import org.springframework.http.HttpHeaders;
 import org.springframework.http.HttpStatus;
 import org.springframework.http.ResponseEntity;
 import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class DemoController {

    @GetMapping("/hello")
    public ResponseEntity hello() {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.set("Cross-Origin-Embedder-Policy", "require-corp");
        responseHeaders.set("X-Content-Type-Options","nosniff");
        responseHeaders.set("Content-Security-Policy", "frame-ancestors 'none'");
        responseHeaders.set("Cache-Control","no-cache, no-store, must-revalidate, private");
        responseHeaders.set("Pragma", "no-cache");
        responseHeaders.set("Expires", "0");

        ResponseEntity<String> responseWithHeaderUsingResponseEntity = ResponseEntity.ok()
               // .headers(responseHeaders)
                //.headers(responseHeaders)
                .body("{\"text\" : \"Response with header using ResponseEntity2\"}");
        return responseWithHeaderUsingResponseEntity;

    }




}
