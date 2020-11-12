<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            菜品信息        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>
                    <div class="form-group">
                        菜品编号

                        <input type="text" class="form-control" style="" name="caipinbianhao"
                               value="${param.caipinbianhao}"/>
                    </div>
                    <div class="form-group">
                        菜品名称

                        <input type="text" class="form-control" style="" name="caipinmingcheng"
                               value="${param.caipinmingcheng}"/>
                    </div>
                    <div class="form-group">
                        分类

                        <select class="form-control class_fenlei6" data-value="${param.fenlei}"
                                data-rule-required="true" data-msg-required="请填写分类" id="fenlei" name="fenlei">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM caipinfenlei ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request"/>
                                <option value="${m.id}">${m.fenleimingcheng}</option>
                            </c:forEach>

                        </select>
                        <script>
                            $(".class_fenlei6").val($(".class_fenlei6").attr("data-value"))</script>

                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>
                        <option value="jiage">
                            按价格
                        </option>
                        <option value="xiaoliang">
                            按销量
                        </option>
                        <option value="kucun">
                            按库存
                        </option>

                    </select>
                    <select class="form-control" name="sort" id="sort">

                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>

                    </select>
                    <script>$("#orderby").val("${orderby}");
                    $("#sort").val("${sort}");</script>
                    <button type="submit" class="btn btn-default">
                        搜索
                    </button>


                    <!--form标签结束--></form>
            </div>


            <div class="">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 菜品编号</th>
                        <th> 菜品名称</th>
                        <th> 分类</th>
                        <th> 菜品图片</th>
                        <th> 评分</th>
                        <th> 价格</th>
                        <th> 折扣价</th>
                        <th> 销量</th>
                        <th> 库存</th>
                        <th> 发布人</th>
                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="250" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}"/><c:set
                            var="map" value="${map}" scope="request"/>
                        <tr id="${map.id}" pid="">
                            <td width="30" align="center">
                                <label>
                                        ${i}
                                </label>
                            </td>
                            <td> ${map.caipinbianhao} </td>
                            <td> ${map.caipinmingcheng} </td>
                            <td><ssm:sql var="mapcaipinfenlei2"
                                         type="find">SELECT fenleimingcheng FROM caipinfenlei where id='${map.fenlei}'</ssm:sql>${mapcaipinfenlei2.fenleimingcheng} </td>
                            <td><c:choose>
                                <c:when test="${'' == map.caipintupian }">
                                    -</c:when><c:otherwise><img width="100"
                                                                src="${map.caipintupian}"/></c:otherwise></c:choose>
                            </td>
                            <td> ${map.pingfen} </td>
                            <td> ${map.jiage} </td>
                            <td> ${map.zhekoujia} </td>
                            <td> ${map.xiaoliang} </td>
                            <td> ${map.kucun} </td>
                            <td> ${map.faburen} </td>
                            <td align="center">${map.addtime}</td>
                            <td align="center">

                                <a href="gouwuche_add.do?id=${map.id}">购物车</a>

                                <a href="zaixiantousu_add.do?id=${map.id}">在线投诉</a>

                                <a href="caipinxinxi_detail.do?id=${map.id}">
                                    详细
                                </a>
                                <a href="caipinxinxi_updt.do?id=${map.id}">修改</a>
                                <a href="caipinxinxi_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
                                <!--qiatnalijne-->
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            ${page.info}
            <p>
                评分平均值: ${total.avg_pingfen} 　　
            </p>


        </div>


    </div>


</div>
<%@ include file="foot.jsp" %>
