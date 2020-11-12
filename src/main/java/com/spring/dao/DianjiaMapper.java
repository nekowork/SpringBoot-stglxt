package com.spring.dao;

import com.base.MapperBase;
import com.spring.entity.Dianjia;

import org.springframework.stereotype.Repository;


@Repository
public interface DianjiaMapper extends MapperBase<Dianjia> {
    Dianjia login(Dianjia dianjia);
}
