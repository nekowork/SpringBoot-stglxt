package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.CaipinxinxiMapper;
import com.spring.entity.Caipinxinxi;
import com.spring.service.CaipinxinxiService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("CaipinxinxiService")
public class CaipinxinxiServiceImpl extends ServiceBase<Caipinxinxi> implements CaipinxinxiService {
    @Resource
    private CaipinxinxiMapper dao;

    @Override
    protected CaipinxinxiMapper getDao() {
        return dao;
    }
}
