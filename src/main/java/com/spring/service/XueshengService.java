package com.spring.service;

import com.base.IServiceBase;
import com.spring.entity.Xuesheng;

public interface XueshengService extends IServiceBase<Xuesheng> {
    public Xuesheng login(String username, String password);
    public boolean updatePassword(int id, String newPassword);
}
