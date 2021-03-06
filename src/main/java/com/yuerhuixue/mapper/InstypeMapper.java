package com.yuerhuixue.mapper;

import com.sun.org.apache.xpath.internal.operations.Bool;
import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.pojo.Instype;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface InstypeMapper {

    //查询全部乐器类型
    List<Instype> instypeList() throws SQLException;

    //根据id查询乐器类型
    Instype findInstypeById(Integer id) throws SQLException;

    //修改乐器类型信息
    Boolean instypeModify(Instype instype) throws SQLException;

    //删除乐器类型
    Boolean instypeDelete(Integer id) throws SQLException;

    //新增乐器类型
    Boolean instypeInsert(Instype instype) throws SQLException;

    //根据类型名查id
    Integer findIdByName(String name) throws SQLException;

    //根据类型id查询乐器
    Instype findInstrumentByInstype(Integer id) throws SQLException;

}
