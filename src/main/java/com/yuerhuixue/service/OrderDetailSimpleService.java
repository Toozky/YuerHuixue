package com.yuerhuixue.service;

import com.yuerhuixue.pojo.OrderDetail;

import java.sql.SQLException;
import java.util.List;

public interface OrderDetailSimpleService {
    //根据ordermajor_id查订单
    List<OrderDetail> orderDetailFindByOrderMajorId(Integer id) throws SQLException;
}
