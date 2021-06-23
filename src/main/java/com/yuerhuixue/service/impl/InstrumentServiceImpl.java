package com.yuerhuixue.service.impl;

import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.service.InstrumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class InstrumentServiceImpl implements InstrumentService {

    private InstrumentService instrumentService;

    @Autowired
    public void setInstrumentService(InstrumentService instrumentService) {
        this.instrumentService = instrumentService;
    }

    @Override
    public List<Instrument> findAllInstrument() throws SQLException {
        return instrumentService.findAllInstrument();
    }

}
