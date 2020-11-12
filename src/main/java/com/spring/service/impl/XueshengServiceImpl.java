package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.XueshengMapper;
import com.spring.entity.Xuesheng;
import com.spring.service.XueshengService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("XueshengService")
public class XueshengServiceImpl extends ServiceBase<Xuesheng> implements XueshengService {
    @Resource
    private XueshengMapper dao;

    @Override
    protected XueshengMapper getDao() {
        return dao;
    }
    public Xuesheng login(String username, String password) {
        Xuesheng user = new Xuesheng();
        user.setXuehao(username);
            user.setMima(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Xuesheng user = new Xuesheng();
        user.setId(id);
            user.setMima(newPassword);
        int i = this.dao.updateByPrimaryKeySelective(user);
        return i == 1;
    }
}
