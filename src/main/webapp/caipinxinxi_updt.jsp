<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css"/>
<script src="js/layer/layer.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            编辑菜品信息:
        </div>
        <div class="panel-body">
            <form action="caipinxinxiupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品编号</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" readonly="readonly" id="caipinbianhao" name="caipinbianhao" value="${Info.html(mmm.caipinbianhao)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品名称<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:250px;" data-rule-required="true" data-msg-required="请填写菜品名称" id="caipinmingcheng" name="caipinmingcheng" value="${Info.html(mmm.caipinmingcheng)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">分类<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <select class="form-control class_fenlei9" data-value="${Info.html(mmm.fenlei)}" data-rule-required="true" data-msg-required="请填写分类" id="fenlei" name="fenlei" style="width:250px">
<ssm:sql var="select" type="select">SELECT * FROM caipinfenlei ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request" />
<option value="${m.id}">${m.fenleimingcheng}</option>
</c:forEach>

</select>
<script>
$(".class_fenlei9").val($(".class_fenlei9").attr("data-value"))</script>
                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品图片<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <div class="input-group" style="width:250px">
    <input type="text" class="form-control" data-rule-required="true" data-msg-required="请填写菜品图片" id="caipintupian" name="caipintupian" value="${Info.html(mmm.caipintupian)}"/>

    <span class="input-group-btn"><button type="button" class="btn btn-default" onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=caipintupian'})">
    上传图片
</button></span>
</div>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">评分</label>
        <div class="col-sm-8">
            
                                                    <input type="number" class="form-control" style="width:150px;" number="true" data-msg-number="输入一个有效数字" id="pingfen" name="pingfen" value="${Info.html(mmm.pingfen)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">价格<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="number" class="form-control" style="width:150px;" step="0.01" data-rule-required="true" data-msg-required="请填写价格" number="true" data-msg-number="输入一个有效数字" id="jiage" name="jiage" value="${Info.html(mmm.jiage)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">折扣价<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="number" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写折扣价" number="true" data-msg-number="输入一个有效数字" id="zhekoujia" name="zhekoujia" value="${Info.html(mmm.zhekoujia)}"/>                                            
        </div>
    </div>
</div>
                                                                            <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">库存<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="number" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写库存" number="true" data-msg-number="输入一个有效数字" id="kucun" name="kucun" value="${Info.html(mmm.kucun)}"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品详情</label>
        <div class="col-sm-8">
            
                                                    <textarea id="caipinxiangqing" name="caipinxiangqing" style="max-width: 750px;width:100%; height: 300px;">${Info.html(mmm.caipinxiangqing)}</textarea><script>
            (function(){
                var um = UM.getEditor('caipinxiangqing');
            })();
            </script>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">发布人</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" readonly="readonly" id="faburen" name="faburen" value="${mmm.faburen}"/>                                            
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
