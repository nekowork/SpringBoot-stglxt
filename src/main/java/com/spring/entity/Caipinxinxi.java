package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "caipinxinxi")
public class Caipinxinxi implements Serializable {
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
    @Column(name = "pingfen")
    private Double pingfen;
    @Column(name = "jiage")
    private Double jiage;
    @Column(name = "zhekoujia")
    private Integer zhekoujia;
    @Column(name = "xiaoliang")
    private Integer xiaoliang;
    @Column(name = "kucun")
    private Integer kucun;
    @Column(name = "caipinxiangqing")
    private String caipinxiangqing;
    @Column(name = "faburen")
    private String faburen;

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

    public Double getPingfen() {
        return pingfen;
    }
    public void setPingfen(Double pingfen) {
        this.pingfen = pingfen == null ? 0.0f : pingfen;
    }

    public Double getJiage() {
        return jiage;
    }
    public void setJiage(Double jiage) {
        this.jiage = jiage == null ? 0.0f : jiage;
    }

    public Integer getZhekoujia() {
        return zhekoujia;
    }
    public void setZhekoujia(Integer zhekoujia) {
        this.zhekoujia = zhekoujia == null ? 0 : zhekoujia;
    }

    public Integer getXiaoliang() {
        return xiaoliang;
    }
    public void setXiaoliang(Integer xiaoliang) {
        this.xiaoliang = xiaoliang == null ? 0 : xiaoliang;
    }

    public Integer getKucun() {
        return kucun;
    }
    public void setKucun(Integer kucun) {
        this.kucun = kucun == null ? 0 : kucun;
    }

    public String getCaipinxiangqing() {
        return caipinxiangqing;
    }
    public void setCaipinxiangqing(String caipinxiangqing) {
        this.caipinxiangqing = caipinxiangqing == null ? "" : caipinxiangqing.trim();
    }

    public String getFaburen() {
        return faburen;
    }
    public void setFaburen(String faburen) {
        this.faburen = faburen == null ? "" : faburen.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
