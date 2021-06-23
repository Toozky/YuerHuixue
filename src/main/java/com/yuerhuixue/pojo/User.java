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
    private Boolean businessman;

    public User(String name, String tel, String email, String address, String pass) {
        this.name = name;
        this.tel = tel;
        this.email = email;
        this.address = address;
        this.pass = pass;
        this.businessman = false;
    }

    //modify构造
    public User(Integer id, String name, String tel, String email, String address, String pass) {
        this.id = id;
        this.name = name;
        this.tel = tel;
        this.email = email;
        this.address = address;
        this.pass = pass;
    }

}
