package com.qa;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages={"com.qa.controllers","com.qa.restful.controllers","com.qa.models","com.qa.services"})
public class ElsevierProjectApplication {

	public static void main(String[] args) {
		// a random comment
		//a nother random comment
		SpringApplication.run(ElsevierProjectApplication.class, args);

		System.out.println("We are merged! :D");
	}
}
