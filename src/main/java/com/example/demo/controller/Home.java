package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class Home {


    @GetMapping("/")
    public String home() throws UnknownHostException {

        InetAddress ip = InetAddress.getLocalHost();
        return "Hello!" + ip.getHostAddress();
    }

}
