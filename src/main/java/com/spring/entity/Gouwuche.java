package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "gouwuche")
public class Gouwuche implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "caipinbianhao")
    private String caipinbianhao;
    @Column(name = "caipinmingcheng")
    private String caipinmingcheng;
    @Column(name = "fenlei")
    private String fenlei;
    @Column(name = "caipintupian")
    private String caipintupian;
    @Column(name = "jiage")
    private Double jiage;
    @Column(name = "faburen")
    private String faburen;
    @Column(name = "zhekoujia")
    private Integer zhekoujia;
    @Column(name = "goumaishuliang")
    private Integer goumaishuliang;
    @Column(name = "xiaoji")
    private Double xiaoji;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "goumairen")
    private String goumairen;
    private String issh;
    private Integer caipinxinxiid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCaipinbianhao() {
        return caipinbianhao;
    }
    public void setCaipinbianhao(String caipinbianhao) {
        this.caipinbianhao = caipinbianhao == null ? "" : caipinbianhao.trim();
    }

    public String getCaipinmingcheng() {
        return caipinmingcheng;
    }
    public void setCaipinmingcheng(String caipinmingcheng) {
        this.caipinmingcheng = caipinmingcheng == null ? "" : caipinmingcheng.trim();
    }

    public String getFenlei() {
        return fenlei;
    }
    public void setFenlei(String fenlei) {
        this.fenlei = fenlei == null ? "" : fenlei.trim();
    }

    public String getCaipintupian() {
        return caipintupian;
    }
    public void setCaipintupian(String caipintupian) {
        this.caipintupian = caipintupian == null ? "" : caipintupian.trim();
    }

    public Double getJiage() {
        return jiage;
    }
    public void setJiage(Double jiage) {
        this.jiage = jiage == null ? 0.0f : jiage;
    }

    public String getFaburen() {
        return faburen;
    }
    public void setFaburen(String faburen) {
        this.faburen = faburen == null ? "" : faburen.trim();
    }

    public Integer getZhekoujia() {
        return zhekoujia;
    }
    public void setZhekoujia(Integer zhekoujia) {
        this.zhekoujia = zhekoujia == null ? 0 : zhekoujia;
    }

    public Integer getGoumaishuliang() {
        return goumaishuliang;
    }
    public void setGoumaishuliang(Integer goumaishuliang) {
        this.goumaishuliang = goumaishuliang == null ? 0 : goumaishuliang;
    }

    public Double getXiaoji() {
        return xiaoji;
    }
    public void setXiaoji(Double xiaoji) {
        this.xiaoji = xiaoji == null ? 0.0f : xiaoji;
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getGoumairen() {
        return goumairen;
    }
    public void setGoumairen(String goumairen) {
        this.goumairen = goumairen == null ? "" : goumairen.trim();
    }
    public String getIssh() {
        return issh;
    }
    public void setIssh(String issh) {
        this.issh = issh == null ? "" : issh.trim();
    }
    public Integer getCaipinxinxiid() {
        return caipinxinxiid;
    }
    public void setCaipinxinxiid(Integer caipinxinxiid) {
        this.caipinxinxiid = caipinxinxiid == null ? 0 : caipinxinxiid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
