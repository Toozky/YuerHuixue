package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.OrderDetailSimple;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface OrderDetailSimpleMapper {
    //根据ordermajor_id查订单
    List<OrderDetailSimple> orderDetailFindByOrderMajorId(@Param("id") Integer id) throws SQLException;

}
