package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.InstrumentMapper;
import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.service.InstrumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class InstrumentServiceImpl implements InstrumentService {

    @Autowired
    private InstrumentMapper instrumentMapper;

    @Override
    public List<Instrument> instrumentList() throws SQLException {
        return instrumentMapper.instrumentList();
    }

    @Override
    public Instrument findInstrumentById(Integer id) throws SQLException {
        return instrumentMapper.findInstrumentById(id);
    }

    @Override
    public Boolean instrumentModify(Instrument instrument) throws SQLException {
        return instrumentMapper.instrumentModify(instrument);
    }

}
