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
            购物车        </span>
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

                        <select class="form-control class_fenlei11" data-value="${param.fenlei}" id="fenlei"
                                name="fenlei">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM caipinfenlei ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request"/>
                                <option value="${m.id}">${m.fenleimingcheng}</option>
                            </c:forEach>

                        </select>
                        <script>
                            $(".class_fenlei11").val($(".class_fenlei11").attr("data-value"))</script>

                    </div>
                    <div class="form-group">
                        购买数量

                        <input type="text" class="form-control" style="width:80px;" name="goumaishuliang_start"
                               value="${param.goumaishuliang_start}"/>-
                        <input type="text" class="form-control" style="width:80px;" name="goumaishuliang_end"
                               value="${param.goumaishuliang_end}"/>
                    </div>
                    <div class="form-group">
                        小计

                        <input type="text" class="form-control" style="width:80px;" name="xiaoji_start"
                               value="${param.xiaoji_start}"/>-<input type="text" class="form-control"
                                                                      style="width:80px;" name="xiaoji_end"
                                                                      value="${param.xiaoji_end}"/>
                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>
                        <option value="jiage">
                            按价格
                        </option>
                        <option value="goumaishuliang">
                            按购买数量
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
                        <th> 价格</th>
                        <th> 发布人</th>
                        <th> 折扣价</th>
                        <th> 购买数量</th>
                        <th> 小计</th>
                        <th> 备注</th>
                        <th> 购买人</th>
                        <th width="80" data-field="issh">审核状态</th>
                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
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
                            <td><ssm:sql var="mapcaipinfenlei7"
                                         type="find">SELECT fenleimingcheng FROM caipinfenlei where id='${map.fenlei}'</ssm:sql>${mapcaipinfenlei7.fenleimingcheng} </td>
                            <td><c:choose>
                                <c:when test="${'' == map.caipintupian }">
                                    -</c:when><c:otherwise><img width="100"
                                                                src="${map.caipintupian}"/></c:otherwise></c:choose>
                            </td>
                            <td> ${map.jiage} </td>
                            <td> ${map.faburen} </td>
                            <td> ${map.zhekoujia} </td>
                            <td> ${map.goumaishuliang} </td>
                            <td> ${map.xiaoji} </td>
                            <td> ${map.beizhu} </td>
                            <td> ${map.goumairen} </td>
                            <td>
                                    ${map.issh}
                            </td>
                            <td align="center">${map.addtime}</td>
                            <td align="center">

                                <a href="gouwuche_detail.do?id=${map.id}">
                                    详细
                                </a>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            ${page.info}
            <p>
                小计总和: ${total.sum_xiaoji} 　　
            </p>


        </div>


    </div>


</div>
<%@ include file="foot.jsp" %>
