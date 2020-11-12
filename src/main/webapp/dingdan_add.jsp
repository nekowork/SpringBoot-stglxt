<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">
                添加订单:
            </div>
            <div class="panel-body">
                <form action="dingdaninsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">订单编号</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="dingdanbianhao" name="dingdanbianhao" value="${Info.getID()}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">订单信息</label>
                            <div class="col-sm-8">

                                <ssm:sql var="dataListdingdanxinxi"
                                         type="select">SELECT * FROM gouwuche WHERE issh='否' AND goumairen='${sessionScope.username}' AND faburen='${param.faburen}' ORDER BY id desc</ssm:sql>
                                <div id="dataListdingdanxinxi" style="text-align: left;">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <td>菜品编号</td>
                                            <td>菜品名称</td>
                                            <td>分类</td>
                                            <td>菜品图片</td>
                                            <td>折扣价</td>
                                            <td>小计</td>
                                            <td>购买数量</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <c:forEach items="${dataListdingdanxinxi}" var="dataMap"><c:set
                                                    var="dataMap" value="${dataMap}" scope="request"/>
                                            <td>${dataMap.caipinbianhao}</td>
                                            <td>${dataMap.caipinmingcheng}</td>
                                            <td><ssm:sql var="mapcaipinfenlei3"
                                                         type="find">SELECT fenleimingcheng FROM caipinfenlei where id='${dataMap.fenlei}'</ssm:sql>
                                                ${mapcaipinfenlei3.fenleimingcheng}</td>
                                            <td><c:choose>
                                                <c:when test="${'' == dataMap.caipintupian }">
                                                    -</c:when><c:otherwise><img width="100"
                                                                                src="${dataMap.caipintupian}"/></c:otherwise></c:choose>
                                            </td>
                                            <td>${dataMap.zhekoujia}</td>
                                            <td>${dataMap.xiaoji}</td>
                                            <td>${dataMap.goumaishuliang}</td>
                                        </tr>
                                        </tbody>
                                        </c:forEach>
                                    </table>
                                </div>
                                <input type="hidden" name="dataset_shangjia" value="${param.faburen}"/><input
                                    id="dingdanxinxi" name="dingdanxinxi" type="hidden"/>
                                <script>$("#dingdanxinxi").val($("#dataListdingdanxinxi").html());</script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">订单金额<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">

                                <input type="number" class="form-control" style="width:150px;" step="0.01"
                                       data-rule-required="true" data-msg-required="请填写订单金额" number="true"
                                       data-msg-number="输入一个有效数字" id="dingdanjine" name="dingdanjine"
                                    readonly   value="${param.dingdanjine}"/>


                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">用餐人</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" id="yongcanren"
                                       name="yongcanren" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">联系电话<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" data-rule-required="true"
                                       data-msg-required="请填写联系电话" phone="true" data-msg-phone="请输入正确手机号码"
                                       id="lianxidianhua" name="lianxidianhua" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">用餐时间<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control"
                                       onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn'})"
                                       style="width:120px;" data-rule-required="true" data-msg-required="请填写用餐时间"
                                       id="yongcanshijian" name="yongcanshijian" readonly="readonly" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">备注</label>
                            <div class="col-sm-8">

                                <textarea style="width: 80%;height: 120px" class="form-control" id="beizhu"
                                          name="beizhu"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">店家</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="dianjia" name="dianjia" value="${param.faburen}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">下单人</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="xiadanren" name="xiadanren" value="${sessionScope.username}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                            <div class="col-sm-8">


                                <input type="hidden" name="zhuangtai" id="zhuangtai" value="未付款"/>

                                <input type="hidden" name="iszf" value="否"/>


                                <input type="hidden" name="referer" value="dingdan_list_xiadanren.do">




                                <button type="submit" class="btn btn-primary" name="Submit">
                                    提交
                                </button>
                                <button type="reset" class="btn btn-default" name="Submit2">
                                    重置
                                </button>


                            </div>
                        </div>
                    </div>

                    <!--form标签结束--></form>
            </div>
        </div>

        <!-- container定宽，并剧中结束 --></div>


    <script>
        $(function () {
            $('#form1').validate();
        });
    </script>


</div>
<%@ include file="foot.jsp" %>
