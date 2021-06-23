package com.yuerhuixue.service;

import com.yuerhuixue.pojo.Instrument;

import java.sql.SQLException;
import java.util.List;

public interface InstrumentService {

    //查询全部乐器
    List<Instrument> instrumentList() throws SQLException;

    //根据id查询乐器
    Instrument findInstrumentById(Integer id) throws SQLException;

    //修改乐器信息
    Boolean instrumentModify(Instrument instrument) throws SQLException;

}
