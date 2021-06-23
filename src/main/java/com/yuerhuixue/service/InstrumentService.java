package com.yuerhuixue.service;

import com.yuerhuixue.pojo.Instrument;

import java.sql.SQLException;
import java.util.List;

public interface InstrumentService {

    //查询全部乐器
    List<Instrument> findAllInstrument() throws SQLException;

}
