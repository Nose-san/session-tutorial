package com.example.sessiontutorial.config;

import com.example.sessiontutorial.domain.model.Cart;
import com.example.sessiontutorial.domain.model.Order;
import com.github.dozermapper.core.loader.api.BeanMappingBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DozerConfig {
    @Bean
    public BeanMappingBuilder orderMapping(){
        return  new BeanMappingBuilder() {
            @Override
            protected void configure() {
                mapping(type(Cart.class), type(Order.class))
                        .fields(field("cartItems"), field("orderLines"));
            }
        };
    }
}
