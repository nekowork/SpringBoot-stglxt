package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.JiaofuMapper;
import com.spring.entity.Jiaofu;
import com.spring.service.JiaofuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("JiaofuService")
public class JiaofuServiceImpl extends ServiceBase<Jiaofu> implements JiaofuService {
    @Resource
    private JiaofuMapper dao;

    @Override
    protected JiaofuMapper getDao() {
        return dao;
    }
}
