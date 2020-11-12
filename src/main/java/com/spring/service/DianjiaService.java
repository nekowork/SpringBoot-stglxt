package com.spring.service;

import com.base.IServiceBase;
import com.spring.entity.Dianjia;

public interface DianjiaService extends IServiceBase<Dianjia> {
    public Dianjia login(String username, String password);
    public boolean updatePassword(int id, String newPassword);
}
