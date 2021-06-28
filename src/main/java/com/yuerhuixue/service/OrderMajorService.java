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

    //删除订单
    Boolean orderMajorDelete(Integer id) throws SQLException;

    //按用户id查订单
    List<OrderMajor> orderMajorListByUserId(Integer id)throws SQLException;

    //查询订单中所有用户的id
    List<Integer> orderMajorUserIdList()throws SQLException;

}
