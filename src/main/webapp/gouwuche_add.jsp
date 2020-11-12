<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>

<div style="padding: 10px">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            添加购物车:
        </div>
        <div class="panel-body">
            <form action="gouwucheinsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品编号</label>
        <div class="col-sm-8">
            
                                                    ${readMap.caipinbianhao}<input type="hidden" id="caipinbianhao" name="caipinbianhao" value="${Info.html(readMap.caipinbianhao)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品名称</label>
        <div class="col-sm-8">
            
                                                    ${readMap.caipinmingcheng}<input type="hidden" id="caipinmingcheng" name="caipinmingcheng" value="${Info.html(readMap.caipinmingcheng)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">分类</label>
        <div class="col-sm-8">
            
                                                    <ssm:sql var="mapcaipinfenlei10" type="find">SELECT fenleimingcheng FROM caipinfenlei where id='${readMap.fenlei}'</ssm:sql>${mapcaipinfenlei10.fenleimingcheng}<input type="hidden" id="fenlei" name="fenlei" value="${Info.html(readMap.fenlei)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品图片</label>
        <div class="col-sm-8">
            
                                                    <c:choose>
<c:when test="${'' == readMap.caipintupian }">
-</c:when><c:otherwise><img width="100" src="${readMap.caipintupian}"/></c:otherwise></c:choose><input type="hidden" id="caipintupian" name="caipintupian" value="${Info.html(readMap.caipintupian)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">价格</label>
        <div class="col-sm-8">
            
                                                    ${readMap.jiage}<input type="hidden" id="jiage" name="jiage" value="${Info.html(readMap.jiage)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">发布人</label>
        <div class="col-sm-8">
            
                                                    ${readMap.faburen}<input type="hidden" id="faburen" name="faburen" value="${Info.html(readMap.faburen)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">折扣价</label>
        <div class="col-sm-8">
            
                                                    ${readMap.zhekoujia}<input type="hidden" id="zhekoujia" name="zhekoujia" value="${Info.html(readMap.zhekoujia)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">购买数量<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="number" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写购买数量" number="true" data-msg-number="输入一个有效数字" min="1" max="${readMap.kucun}" id="goumaishuliang" name="goumaishuliang" value=""/>                                            
        </div>
    </div>
</div>
                                                                            <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">备注</label>
        <div class="col-sm-8">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" id="beizhu" name="beizhu"></textarea>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">购买人</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" readonly="readonly" id="goumairen" name="goumairen" value="${sessionScope.username}"/>                                            
        </div>
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
        <div class="col-sm-8">
            
                                                                <input type="hidden" name="caipinxinxiid" value="${param.id}"/>
                        <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                    
                                                                                                <input type="hidden" name="issh" value="否"/>
                                                                    
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
