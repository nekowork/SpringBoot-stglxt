package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.DianjiaMapper;
import com.spring.entity.Dianjia;
import com.spring.service.DianjiaService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("DianjiaService")
public class DianjiaServiceImpl extends ServiceBase<Dianjia> implements DianjiaService {
    @Resource
    private DianjiaMapper dao;

    @Override
    protected DianjiaMapper getDao() {
        return dao;
    }
    public Dianjia login(String username, String password) {
        Dianjia user = new Dianjia();
        user.setZhanghao(username);
            user.setMima(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Dianjia user = new Dianjia();
        user.setId(id);
            user.setMima(newPassword);
        int i = this.dao.updateByPrimaryKeySelective(user);
        return i == 1;
    }
}
