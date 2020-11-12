package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "jiaofu")
public class Jiaofu implements Serializable {
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
    @Column(name = "xiadanren")
    private String xiadanren;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "jiaofuren")
    private String jiaofuren;
    private Integer dingdanid;

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

    public String getXiadanren() {
        return xiadanren;
    }
    public void setXiadanren(String xiadanren) {
        this.xiadanren = xiadanren == null ? "" : xiadanren.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getJiaofuren() {
        return jiaofuren;
    }
    public void setJiaofuren(String jiaofuren) {
        this.jiaofuren = jiaofuren == null ? "" : jiaofuren.trim();
    }
    public Integer getDingdanid() {
        return dingdanid;
    }
    public void setDingdanid(Integer dingdanid) {
        this.dingdanid = dingdanid == null ? 0 : dingdanid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
