<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>

<div style="padding: 10px">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->
        <% HashMap readMap = Query.make("caipinxinxi").where("id", request.getParameter("id")).find();
        request.setAttribute("readMap",readMap);
        %>




        <div class="panel panel-default">
            <div class="panel-heading">
                添加评论:
            </div>
            <div class="panel-body">
                <form action="pingluninsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                    <input type="hidden" name="biao" value="${param.biao}">
                    <input type="hidden" name="biaoid" value="${param.id}">
                    <input type="hidden" name="biaoti" value="<%= readMap.get("caipinmingcheng") %>">
                    <input type="hidden" name="qitaid" value="${param.qitaid}">
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品编号</label>
                            <div class="col-sm-8">
                                <td><%= readMap.get("caipinbianhao") %>
                                </td>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品名称</label>
                            <div class="col-sm-8">
                                <td><%= readMap.get("caipinmingcheng") %>
                                </td>
                            </div>
                        </div>
                    </div>




                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">评分<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">

                                <select class="form-control class_pingfen13" data-value="" data-rule-required="true"
                                        data-msg-required="请填写评分" id="pingfen" name="pingfen" style="width:250px">
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">评论内容</label>
                            <div class="col-sm-8">

                                <textarea style="width: 80%;height: 120px" class="form-control" id="pinglunneirong"
                                          name="pinglunneirong"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">评论人</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="pinglunren" name="pinglunren" value="${sessionScope.username}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                            <div class="col-sm-8">


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
