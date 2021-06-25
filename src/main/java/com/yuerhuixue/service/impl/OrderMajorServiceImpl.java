package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.OrderMajorMapper;
import com.yuerhuixue.pojo.OrderMajor;
import com.yuerhuixue.service.OrderMajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class OrderMajorServiceImpl implements OrderMajorService {
    @Autowired
    OrderMajorMapper orderMajorMapper;

    @Override
    public List<OrderMajor> orderMajorList() throws SQLException {
        return orderMajorMapper.orderMajorList();
    }

    @Override
    public OrderMajor orderMajorFindById(Integer id) throws SQLException {
        return orderMajorMapper.orderMajorFindById(id);
    }

    @Override
    public Boolean orderMajorInsert(OrderMajor orderMajor) throws SQLException {
        return orderMajorMapper.orderMajorInsert(orderMajor);
    }
}
