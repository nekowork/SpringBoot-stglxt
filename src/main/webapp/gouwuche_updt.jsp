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
            编辑购物车:
        </div>
        <div class="panel-body">
            <form action="gouwucheupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品编号</label>
        <div class="col-sm-8">
            
                                                    ${mmm.caipinbianhao}<input type="hidden" id="caipinbianhao" name="caipinbianhao" value="${Info.html(mmm.caipinbianhao)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品名称</label>
        <div class="col-sm-8">
            
                                                    ${mmm.caipinmingcheng}<input type="hidden" id="caipinmingcheng" name="caipinmingcheng" value="${Info.html(mmm.caipinmingcheng)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">分类</label>
        <div class="col-sm-8">
            
                                                    <ssm:sql var="mapcaipinfenlei11" type="find">SELECT fenleimingcheng FROM caipinfenlei where id='${mmm.fenlei}'</ssm:sql>${mapcaipinfenlei11.fenleimingcheng}<input type="hidden" id="fenlei" name="fenlei" value="${Info.html(mmm.fenlei)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品图片</label>
        <div class="col-sm-8">
            
                                                    <c:choose>
<c:when test="${'' == mmm.caipintupian }">
-</c:when><c:otherwise><img width="100" src="${mmm.caipintupian}"/></c:otherwise></c:choose><input type="hidden" id="caipintupian" name="caipintupian" value="${Info.html(mmm.caipintupian)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">价格</label>
        <div class="col-sm-8">
            
                                                    ${mmm.jiage}<input type="hidden" id="jiage" name="jiage" value="${Info.html(mmm.jiage)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">发布人</label>
        <div class="col-sm-8">
            
                                                    ${mmm.faburen}<input type="hidden" id="faburen" name="faburen" value="${Info.html(mmm.faburen)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">折扣价</label>
        <div class="col-sm-8">
            
                                                    ${mmm.zhekoujia}<input type="hidden" id="zhekoujia" name="zhekoujia" value="${Info.html(mmm.zhekoujia)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">购买数量<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="number" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写购买数量" number="true" data-msg-number="输入一个有效数字" min="1" max="${readMap.kucun}" id="goumaishuliang" name="goumaishuliang" value="${Info.html(mmm.goumaishuliang)}"/>                                            
        </div>
    </div>
</div>
                                                                            <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">备注</label>
        <div class="col-sm-8">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" id="beizhu" name="beizhu">${Info.html(mmm.beizhu)}</textarea>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">购买人</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" readonly="readonly" id="goumairen" name="goumairen" value="${mmm.goumairen}"/>                                            
        </div>
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
        <div class="col-sm-8">
            
                                            <input name="id" value="${mmm.id}" type="hidden"/>
                        <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                        <input name="updtself" value="${updtself}" type="hidden"/>
                                        
                    
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
