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
            订单        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>
                    <div class="form-group">
                        订单编号

                        <input type="text" class="form-control" style="" name="dingdanbianhao"
                               value="${param.dingdanbianhao}"/>
                    </div>
                    <div class="form-group">
                        订单信息


                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>
                        <option value="dingdanjine">
                            按订单金额
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
                        <th> 订单编号</th>
                        <th> 订单信息</th>
                        <th> 订单金额</th>
                        <th> 用餐人</th>
                        <th> 联系电话</th>
                        <th> 用餐时间</th>
                        <th> 状态</th>
                        <th> 备注</th>
                        <th> 店家</th>
                        <th> 下单人</th>
                        <th width="80" data-field="iszf">是否支付</th>
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
                            <td> ${map.dingdanbianhao} </td>
                            <td> ${map.dingdanxinxi} </td>
                            <td> ${map.dingdanjine} </td>
                            <td> ${map.yongcanren} </td>
                            <td> ${map.lianxidianhua} </td>
                            <td> ${map.yongcanshijian} </td>
                            <td> ${map.zhuangtai} </td>
                            <td> ${map.beizhu} </td>
                            <td> ${map.dianjia} </td>
                            <td> ${map.xiadanren} </td>
                            <td>
                                    ${map.iszf}
                                <c:choose>
                                    <c:when test="${'否' == map.iszf }">

                                        <a href="zhifu/index.jsp?id=${map.id}&biao=dingdan">
                                            去支付
                                        </a>
                                    </c:when></c:choose>
                            </td>
                            <td align="center">${map.addtime}</td>
                            <td align="center">

                                <c:choose>
                                    <c:when test="${map.zhuangtai == '未交付'}">

                                        <a href="jiaofu_add.do?id=${map.id}">交付</a>

                                    </c:when>
                                </c:choose>


                                <a href="dingdan_detail.do?id=${map.id}">
                                    详细
                                </a>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            ${page.info}
            <p>
                订单金额总和: ${total.sum_dingdanjine} 　　
            </p>


        </div>


    </div>


</div>
<%@ include file="foot.jsp" %>
