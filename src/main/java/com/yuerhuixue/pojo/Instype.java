package com.yuerhuixue.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Instype {

    private Integer id;
    private String name;
    private String picpath;
    private String description;

    //δΉε¨ιε
    private List<Instrument> instruments;

}
