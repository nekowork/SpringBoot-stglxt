package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.CaipinfenleiMapper;
import com.spring.entity.Caipinfenlei;
import com.spring.service.CaipinfenleiService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("CaipinfenleiService")
public class CaipinfenleiServiceImpl extends ServiceBase<Caipinfenlei> implements CaipinfenleiService {
    @Resource
    private CaipinfenleiMapper dao;

    @Override
    protected CaipinfenleiMapper getDao() {
        return dao;
    }
}
