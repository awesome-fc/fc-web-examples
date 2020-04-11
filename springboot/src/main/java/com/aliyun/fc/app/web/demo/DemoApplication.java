package com.aliyun.fc.app.web.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
@RestController
public class DemoApplication {

	@RequestMapping("/")
	public String index() {
		return "Greetings from Spring Boot!<br/><br/>This web app host on FunctionCompute of Aliyun.";
	}


	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
