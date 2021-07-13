package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.Bbs;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface BbsMapper {
    //社区
    List<Bbs> shequList() throws SQLException;
    //新增社区信息
    Boolean shequInsert(Bbs shequadd) throws SQLException;


}
