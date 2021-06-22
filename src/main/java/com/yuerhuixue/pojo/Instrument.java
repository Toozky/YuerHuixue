package com.yuerhuixue.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Instrument {

    private Integer id;
    private Instype instype;
    private String name;
    private Double price;
    private Integer stock;
    private String picpath;
    private String brand;
    private String description;

}
