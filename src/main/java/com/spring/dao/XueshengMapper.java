package com.spring.dao;

import com.base.MapperBase;
import com.spring.entity.Xuesheng;

import org.springframework.stereotype.Repository;


@Repository
public interface XueshengMapper extends MapperBase<Xuesheng> {
    Xuesheng login(Xuesheng xuesheng);
}
