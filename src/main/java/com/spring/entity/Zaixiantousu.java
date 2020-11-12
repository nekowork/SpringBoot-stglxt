package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "zaixiantousu")
public class Zaixiantousu implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "xingming")
    private String xingming;
    @Column(name = "dianhua")
    private String dianhua;
    @Column(name = "tousudianjia")
    private String tousudianjia;
    @Column(name = "tousuneirong")
    private String tousuneirong;
    @Column(name = "huifuneirong")
    private String huifuneirong;
    @Column(name = "tousuren")
    private String tousuren;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getXingming() {
        return xingming;
    }
    public void setXingming(String xingming) {
        this.xingming = xingming == null ? "" : xingming.trim();
    }

    public String getDianhua() {
        return dianhua;
    }
    public void setDianhua(String dianhua) {
        this.dianhua = dianhua == null ? "" : dianhua.trim();
    }

    public String getTousudianjia() {
        return tousudianjia;
    }
    public void setTousudianjia(String tousudianjia) {
        this.tousudianjia = tousudianjia == null ? "" : tousudianjia.trim();
    }

    public String getTousuneirong() {
        return tousuneirong;
    }
    public void setTousuneirong(String tousuneirong) {
        this.tousuneirong = tousuneirong == null ? "" : tousuneirong.trim();
    }

    public String getHuifuneirong() {
        return huifuneirong;
    }
    public void setHuifuneirong(String huifuneirong) {
        this.huifuneirong = huifuneirong == null ? "" : huifuneirong.trim();
    }

    public String getTousuren() {
        return tousuren;
    }
    public void setTousuren(String tousuren) {
        this.tousuren = tousuren == null ? "" : tousuren.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
