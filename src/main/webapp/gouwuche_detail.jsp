<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">



<style>
    .admin-detail {
        display: flex;
        flex-wrap: wrap;
    }
    .admin-detail .detail {
        width: 50%;
        padding: 5px;
        display: flex;
        margin-bottom: 10px;
        border-bottom: 1px solid #DEDEDE;
    }
    .admin-detail .detail .detail-title {
        width: 120px;
        text-align: right;
    }
    .admin-detail .detail .detail-content {
        flex-grow: 1;
    }
    .admin-detail .detail.detail-editor {
        width: 100%;
        flex-wrap: wrap;
    }
    .admin-detail .detail.detail-editor .detail-title {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        background: #9a0606;
        color: #ffffff;
        text-align: left;
    }
    .admin-detail .detail.detail-editor .detail-content{
        padding: 10px;
    }

</style>




<div class="panel panel-default">
    <div class="panel-heading">
        购物车详情
    </div>
    <div class="panel-body">

        <div class="admin-detail clearfix">
                            <div class="detail detail-text">
                    <div class="detail-title">
                        菜品编号：
                    </div>
                    <div class="detail-content">
                        ${map.caipinbianhao}                    </div>
                </div>
                            <div class="detail detail-longtext">
                    <div class="detail-title">
                        菜品名称：
                    </div>
                    <div class="detail-content">
                        ${map.caipinmingcheng}                    </div>
                </div>
                            <div class="detail detail-select">
                    <div class="detail-title">
                        分类：
                    </div>
                    <div class="detail-content">
                        <ssm:sql var="mapcaipinfenlei9" type="find">SELECT fenleimingcheng FROM caipinfenlei where id='${map.fenlei}'</ssm:sql>${mapcaipinfenlei9.fenleimingcheng}                    </div>
                </div>
                            <div class="detail detail-image">
                    <div class="detail-title">
                        菜品图片：
                    </div>
                    <div class="detail-content">
                        <img src="${map.caipintupian}" style="width: 350px"/>                    </div>
                </div>
                            <div class="detail detail-money">
                    <div class="detail-title">
                        价格：
                    </div>
                    <div class="detail-content">
                        ${map.jiage}                    </div>
                </div>
                            <div class="detail detail-textuser">
                    <div class="detail-title">
                        发布人：
                    </div>
                    <div class="detail-content">
                        ${map.faburen}                    </div>
                </div>
                            <div class="detail detail-number">
                    <div class="detail-title">
                        折扣价：
                    </div>
                    <div class="detail-content">
                        ${map.zhekoujia}                    </div>
                </div>
                            <div class="detail detail-number">
                    <div class="detail-title">
                        购买数量：
                    </div>
                    <div class="detail-content">
                        ${map.goumaishuliang}                    </div>
                </div>
                            <div class="detail detail-money">
                    <div class="detail-title">
                        小计：
                    </div>
                    <div class="detail-content">
                        ${map.xiaoji}                    </div>
                </div>
                            <div class="detail detail-textarea">
                    <div class="detail-title">
                        备注：
                    </div>
                    <div class="detail-content">
                        ${map.beizhu}                    </div>
                </div>
                            <div class="detail detail-textuser">
                    <div class="detail-title">
                        购买人：
                    </div>
                    <div class="detail-content">
                        ${map.goumairen}                    </div>
                </div>
                    </div>

        <div class="button-list mt10">
            <div class="">
                <button type="button" class="btn btn-default" onclick="history.go(-1);">
    返回
                
</button>
                <button type="button" class="btn btn-default" onclick="window.print()">
    打印本页
                
</button>
            </div>
        </div>

    </div>
</div>







</div>
<%@ include file="foot.jsp" %>
