package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.InstypeMapper;
import com.yuerhuixue.pojo.Instype;
import com.yuerhuixue.service.InstypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class InstypeServiceImpl implements InstypeService {

    @Autowired
    private InstypeMapper instypeMapper;

    @Override
    public List<Instype> instypeList() throws SQLException {
        return instypeMapper.instypeList();
    }
}
