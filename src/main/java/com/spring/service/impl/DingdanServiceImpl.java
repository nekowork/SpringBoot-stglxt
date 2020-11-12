package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.DingdanMapper;
import com.spring.entity.Dingdan;
import com.spring.service.DingdanService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("DingdanService")
public class DingdanServiceImpl extends ServiceBase<Dingdan> implements DingdanService {
    @Resource
    private DingdanMapper dao;

    @Override
    protected DingdanMapper getDao() {
        return dao;
    }
}
