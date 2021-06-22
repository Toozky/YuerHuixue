package com.yuerhuixue.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

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

}
