package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "dingdan")
public class Dingdan implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "dingdanbianhao")
    private String dingdanbianhao;
    @Column(name = "dingdanxinxi")
    private String dingdanxinxi;
    @Column(name = "dingdanjine")
    private Double dingdanjine;
    @Column(name = "yongcanren")
    private String yongcanren;
    @Column(name = "lianxidianhua")
    private String lianxidianhua;
    @Column(name = "yongcanshijian")
    private String yongcanshijian;
    @Column(name = "zhuangtai")
    private String zhuangtai;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "dianjia")
    private String dianjia;
    @Column(name = "xiadanren")
    private String xiadanren;
    private String iszf;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDingdanbianhao() {
        return dingdanbianhao;
    }
    public void setDingdanbianhao(String dingdanbianhao) {
        this.dingdanbianhao = dingdanbianhao == null ? "" : dingdanbianhao.trim();
    }

    public String getDingdanxinxi() {
        return dingdanxinxi;
    }
    public void setDingdanxinxi(String dingdanxinxi) {
        this.dingdanxinxi = dingdanxinxi == null ? "" : dingdanxinxi.trim();
    }

    public Double getDingdanjine() {
        return dingdanjine;
    }
    public void setDingdanjine(Double dingdanjine) {
        this.dingdanjine = dingdanjine == null ? 0.0f : dingdanjine;
    }

    public String getYongcanren() {
        return yongcanren;
    }
    public void setYongcanren(String yongcanren) {
        this.yongcanren = yongcanren == null ? "" : yongcanren.trim();
    }

    public String getLianxidianhua() {
        return lianxidianhua;
    }
    public void setLianxidianhua(String lianxidianhua) {
        this.lianxidianhua = lianxidianhua == null ? "" : lianxidianhua.trim();
    }

    public String getYongcanshijian() {
        return yongcanshijian;
    }
    public void setYongcanshijian(String yongcanshijian) {
        this.yongcanshijian = yongcanshijian == null ? "" : yongcanshijian.trim();
    }

    public String getZhuangtai() {
        return zhuangtai;
    }
    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai == null ? "" : zhuangtai.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getDianjia() {
        return dianjia;
    }
    public void setDianjia(String dianjia) {
        this.dianjia = dianjia == null ? "" : dianjia.trim();
    }

    public String getXiadanren() {
        return xiadanren;
    }
    public void setXiadanren(String xiadanren) {
        this.xiadanren = xiadanren == null ? "" : xiadanren.trim();
    }
    public String getIszf() {
        return iszf;
    }
    public void setIszf(String iszf) {
        this.iszf = iszf == null ? "" : iszf.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
