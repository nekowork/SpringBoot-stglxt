package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "xuesheng")
public class Xuesheng implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "xuehao")
    private String xuehao;
    @Column(name = "mima")
    private String mima;
    @Column(name = "xingming")
    private String xingming;
    @Column(name = "xingbie")
    private String xingbie;
    @Column(name = "nianling")
    private Integer nianling;
    @Column(name = "shouji")
    private String shouji;
    @Column(name = "shenfenzheng")
    private String shenfenzheng;
    @Column(name = "touxiang")
    private String touxiang;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getXuehao() {
        return xuehao;
    }
    public void setXuehao(String xuehao) {
        this.xuehao = xuehao == null ? "" : xuehao.trim();
    }

    public String getMima() {
        return mima;
    }
    public void setMima(String mima) {
        this.mima = mima == null ? "" : mima.trim();
    }

    public String getXingming() {
        return xingming;
    }
    public void setXingming(String xingming) {
        this.xingming = xingming == null ? "" : xingming.trim();
    }

    public String getXingbie() {
        return xingbie;
    }
    public void setXingbie(String xingbie) {
        this.xingbie = xingbie == null ? "" : xingbie.trim();
    }

    public Integer getNianling() {
        return nianling;
    }
    public void setNianling(Integer nianling) {
        this.nianling = nianling == null ? 0 : nianling;
    }

    public String getShouji() {
        return shouji;
    }
    public void setShouji(String shouji) {
        this.shouji = shouji == null ? "" : shouji.trim();
    }

    public String getShenfenzheng() {
        return shenfenzheng;
    }
    public void setShenfenzheng(String shenfenzheng) {
        this.shenfenzheng = shenfenzheng == null ? "" : shenfenzheng.trim();
    }

    public String getTouxiang() {
        return touxiang;
    }
    public void setTouxiang(String touxiang) {
        this.touxiang = touxiang == null ? "" : touxiang.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
