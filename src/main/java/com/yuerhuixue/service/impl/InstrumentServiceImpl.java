package com.yuerhuixue.service.impl;

import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.service.InstrumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class InstrumentServiceImpl implements InstrumentService {

    @Autowired
    private InstrumentService instrumentService;

    @Override
    public List<Instrument> instrumentList() throws SQLException {
        return instrumentService.instrumentList();
    }

}
