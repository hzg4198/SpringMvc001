package com.cuit.springmvc.config;


import org.springframework.context.annotation.*;

@Configuration
@PropertySource("classpath:jdbc.properties")
@Import({JdbcConfig.class, MybatisConfig.class})
//@ComponentScan(basePackages = "com.cuit.springmvc",excludeFilters = @ComponentScan.Filter(
//        type = FilterType.ANNOTATION,classes = Controller.class
//))
@ComponentScan({"com.cuit.springmvc.mapper"})
public class SpringConfig {
}
