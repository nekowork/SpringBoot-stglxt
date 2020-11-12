<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">




<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            在线投诉        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
</div>
                                                                                                    <div class="form-group">
    投诉店家
    
                            <select class="form-control class_tousudianjia1" data-value="${param.tousudianjia}" id="tousudianjia" name="tousudianjia">
<option value="">请选择</option><ssm:sql var="select" type="select">SELECT * FROM dianjia ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request" />
<option value="${m.dianjiamingcheng}">${m.dianjiamingcheng}</option>
</c:forEach>

</select>
<script>
$(".class_tousudianjia1").val($(".class_tousudianjia1").attr("data-value"))</script>
                        
</div>
                                                                                                        <div class="form-group">
    投诉人
    
                            <input type="text" class="form-control" style="" name="tousuren" value="${param.tousuren}"/>                        
</div>
                                    <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                    
</select>
                <select class="form-control" name="sort" id="sort">

                    <option value="desc">倒序</option>
                    <option value="asc">升序</option>
                
</select>
                <script>$("#orderby").val("${orderby}");$("#sort").val("${sort}");</script>
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
                        <th> 姓名 </th>
<th> 电话 </th>
<th> 投诉店家 </th>
<th> 投诉内容 </th>
<th> 回复内容 </th>
<th> 投诉人 </th>
                                                                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0" /><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}" /><c:set var="map" value="${map}" scope="request" />
                    <tr id="${map.id}" pid="">
                        <td width="30" align="center">
                            <label>
                                                                ${i}
                            </label>
                        </td>
                        <td> ${map.xingming} </td>
<td> ${map.dianhua} </td>
<td> ${map.tousudianjia} </td>
<td> ${map.tousuneirong} </td>
<td> ${map.huifuneirong} </td>
<td> ${map.tousuren} </td>
                                                                        <td align="center">${map.addtime}</td>
                        <td align="center">
                            
                                                                                    <a href="zaixiantousu_updt.do?id=${map.id}">回复</a>
                            <a href="zaixiantousu_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
                            <!--qiatnalijne-->
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            
        ${page.info}
        


    </div>



</div>








</div>
<%@ include file="foot.jsp" %>
