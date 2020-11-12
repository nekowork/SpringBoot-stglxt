package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "dianjia")
public class Dianjia implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "zhanghao")
    private String zhanghao;
    @Column(name = "mima")
    private String mima;
    @Column(name = "dianjiamingcheng")
    private String dianjiamingcheng;
    @Column(name = "shoujihaoma")
    private String shoujihaoma;
    @Column(name = "dizhi")
    private String dizhi;
    @Column(name = "youxiang")
    private String youxiang;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getZhanghao() {
        return zhanghao;
    }
    public void setZhanghao(String zhanghao) {
        this.zhanghao = zhanghao == null ? "" : zhanghao.trim();
    }

    public String getMima() {
        return mima;
    }
    public void setMima(String mima) {
        this.mima = mima == null ? "" : mima.trim();
    }

    public String getDianjiamingcheng() {
        return dianjiamingcheng;
    }
    public void setDianjiamingcheng(String dianjiamingcheng) {
        this.dianjiamingcheng = dianjiamingcheng == null ? "" : dianjiamingcheng.trim();
    }

    public String getShoujihaoma() {
        return shoujihaoma;
    }
    public void setShoujihaoma(String shoujihaoma) {
        this.shoujihaoma = shoujihaoma == null ? "" : shoujihaoma.trim();
    }

    public String getDizhi() {
        return dizhi;
    }
    public void setDizhi(String dizhi) {
        this.dizhi = dizhi == null ? "" : dizhi.trim();
    }

    public String getYouxiang() {
        return youxiang;
    }
    public void setYouxiang(String youxiang) {
        this.youxiang = youxiang == null ? "" : youxiang.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
