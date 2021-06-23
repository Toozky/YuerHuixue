package com.yuerhuixue.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.text.SimpleDateFormat;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Admin {

    private Integer id;
    private String name;
    private String pass;

    public Admin(String name, String pass) {
        this.name = name;
        this.pass = pass;
    }

}
