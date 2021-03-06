package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.OrderDetail;
import org.apache.ibatis.annotations.Param;

import java.sql.SQLException;
import java.util.List;

public interface OrderDetailMapper {
    //根据ordermajor_id查订单
    List<OrderDetail> orderDetailFindByOrderMajorId(@Param("id")Integer id) throws SQLException;

}
