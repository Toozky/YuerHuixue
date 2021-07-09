package com.yuerhuixue.pojo;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter
public class OrderDetailSimple {
    private Integer order_major_id;
    private Integer instruments_id;
    private Integer number;
}
