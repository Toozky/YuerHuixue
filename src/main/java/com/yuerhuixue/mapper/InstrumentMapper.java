package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.Instrument;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface InstrumentMapper {

    //查询全部乐器
    List<Instrument> instrumentList() throws SQLException;

}
