package com.example.sessiontutorial;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource("classpath:/META-INF/spring/applicationContext.xml")
public class SessionTutorialApplication {

    public static void main(String[] args) {
        SpringApplication.run(SessionTutorialApplication.class, args);
    }

}
