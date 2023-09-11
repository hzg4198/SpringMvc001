package com.cuit.springmvc.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Integer id;
    private String         username;
    private Date birthday;
    private String         sex;
    private String address;
    private String         password;
}
