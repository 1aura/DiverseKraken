package com.elsevier;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages={"com.elsevier.controllers","com.elsevier.restful.controllers","com.elsevier.models","com.elsevier.services"})
public class ElsevierProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(ElsevierProjectApplication.class, args);
	}
}
