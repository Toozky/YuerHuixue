package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.InstrumentMapper;
import com.yuerhuixue.mapper.InstypeMapper;
import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.pojo.Instype;
import com.yuerhuixue.service.InstypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class InstypeServiceImpl implements InstypeService {

    @Autowired
    private InstypeMapper instypeMapper;

    @Autowired
    private InstrumentMapper instrumentMapper;

    @Override
    public List<Instype> instypeList() throws SQLException {
        return instypeMapper.instypeList();
    }

    @Override
    public Instype findInstypeById(Integer id) throws SQLException {
        return instypeMapper.findInstypeById(id);
    }

    @Override
    public Boolean instypeModify(Instype instype) throws SQLException {
        return instypeMapper.instypeModify(instype);
    }

    @Override
    public Boolean instypeDelete(Integer id) throws SQLException {
        return instypeMapper.instypeDelete(id);
    }

    @Override
    public Boolean instypeInsert(Instype instype) throws SQLException {
        return instypeMapper.instypeInsert(instype);
    }

    @Override
    public List<Instrument> findInstrumentByInstype(Integer id) throws SQLException {
        Instype instype = instypeMapper.findInstrumentByInstype(id);
        List<Instrument> findInstruments = new ArrayList<>();
        if (instype != null){
            List<Instrument> findInstrumentsTemp = instype.getInstruments();
            for (Instrument findInstrumentTemp : findInstrumentsTemp) {
                Instrument instrumentByIdTemp = instrumentMapper.findInstrumentById(findInstrumentTemp.getId());
                findInstruments.add(instrumentByIdTemp);
            }
        }
        return findInstruments;
    }

}
