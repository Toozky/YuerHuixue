package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.OrderMajor;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;
@Repository
public interface OrderMajorMapper {

    //查询所有订单
    List<OrderMajor> orderMajorList()throws SQLException;

    //根据id查订单
    OrderMajor orderMajorFindById(Integer id) throws SQLException;

    //添加订单
    Boolean orderMajorInsert(OrderMajor orderMajor)throws SQLException;

    //删除订单
    Boolean orderMajorDelete(Integer id) throws SQLException;

    //按用户id查订单
    List<OrderMajor> orderMajorListByUserId(@Param("id")Integer id)throws SQLException;

    //查询订单中所有用户的id
    List<Integer> orderMajorUserIdList()throws SQLException;
}
