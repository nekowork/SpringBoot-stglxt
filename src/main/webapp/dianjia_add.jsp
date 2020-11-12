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
            添加店家:
        </div>
        <div class="panel-body">
            <form action="dianjiainsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">账号<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写账号" remote="checkno.do?checktype=insert&table=dianjia&col=zhanghao" data-msg-remote="内容重复了" id="zhanghao" name="zhanghao" value=""/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">密码<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="password" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写密码" id="mima" name="mima" value=""/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">店家名称</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:250px;" id="dianjiamingcheng" name="dianjiamingcheng" value=""/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">手机号码</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" phone="true" data-msg-phone="请输入正确手机号码" id="shoujihaoma" name="shoujihaoma" value=""/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">地址</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" id="dizhi" name="dizhi" value=""/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">邮箱</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" email="true" data-msg-email="请输入有效邮件地址" id="youxiang" name="youxiang" value=""/>                                            
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
