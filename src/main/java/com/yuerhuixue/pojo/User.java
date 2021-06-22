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
public class User {

    private Integer id;
    private String name;
    private String tel;
    private String email;
    private String address;
    private String pass;
    private Date date;
    private Boolean isBusinessman;

    public User(String name, String tel, String email, String address, String pass) {
        this.name = name;
        this.tel = tel;
        this.email = email;
        this.address = address;
        this.pass = pass;

        //获取当前日期
        date=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.format(date);

        this.isBusinessman = false;
    }
}
