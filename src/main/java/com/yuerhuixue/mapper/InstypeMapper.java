package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.Instype;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface InstypeMapper {

    //查询全部乐器类型
    List<Instype> instypeList() throws SQLException;

}
