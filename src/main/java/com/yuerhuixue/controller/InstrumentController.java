package com.yuerhuixue.controller;

import com.yuerhuixue.service.InstrumentService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

@Controller
public class InstrumentController {

    private final InstrumentService instrumentService;

    public InstrumentController(@Qualifier("instrumentServiceImpl") InstrumentService instrumentService) {
        this.instrumentService = instrumentService;
    }
}
