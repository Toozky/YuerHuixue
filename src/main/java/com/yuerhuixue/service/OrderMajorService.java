package com.yuerhuixue.service;

import com.yuerhuixue.pojo.OrderMajor;

import java.sql.SQLException;
import java.util.List;

public interface OrderMajorService {

    //查询所有订单
    List<OrderMajor> orderMajorList()throws SQLException;

    //根据id查订单
    OrderMajor orderMajorFindById(Integer id) throws SQLException;

    //添加订单
    Boolean orderMajorInsert(OrderMajor orderMajor)throws SQLException;
}
