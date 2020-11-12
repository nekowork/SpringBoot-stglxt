package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ZaixiantousuMapper;
import com.spring.entity.Zaixiantousu;
import com.spring.service.ZaixiantousuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ZaixiantousuService")
public class ZaixiantousuServiceImpl extends ServiceBase<Zaixiantousu> implements ZaixiantousuService {
    @Resource
    private ZaixiantousuMapper dao;

    @Override
    protected ZaixiantousuMapper getDao() {
        return dao;
    }
}
