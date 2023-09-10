package com.cuit.springmvc.config;


import org.springframework.context.annotation.*;

@Configuration
@PropertySource("classpath:jdbc.properties")
@Import({JdbcConfig.class, MybatisConfig.class})
@ComponentScan({"com.cuit.springmvc.service","com.cuit.springmvc.mapper"})
public class SpringConfig {
}
