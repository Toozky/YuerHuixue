package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.BbsMapper;
import com.yuerhuixue.pojo.Bbs;
import com.yuerhuixue.service.BbsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class BbsServiceImpl implements BbsService {
    @Autowired
    private BbsMapper shequMapper;


    @Override
    public List<Bbs> shequList() throws SQLException {
        return shequMapper.shequList();
    }

    @Override
    public Boolean shequInsert(Bbs shequadd) throws SQLException {
        return shequMapper.shequInsert(shequadd);
    }
}
