package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.InstrumentMapper;
import com.yuerhuixue.mapper.InstypeMapper;
import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.pojo.Instype;
import com.yuerhuixue.service.InstrumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class InstrumentServiceImpl implements InstrumentService {

    @Autowired
    private InstrumentMapper instrumentMapper;

    @Autowired
    private InstypeMapper instypeMapper;

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
        Integer idByName = instypeMapper.findIdByName(instrument.getInstype().getName());
        Instype instypeById = instypeMapper.findInstypeById(idByName);
        instrument.setInstype(instypeById);
        return instrumentMapper.instrumentModify(instrument);
    }

    @Override
    public Boolean instrumentDelete(Integer id) throws SQLException {
        return instrumentMapper.instrumentDelete(id);
    }

}
