<%@ page language="java" import="dao.*" pageEncoding="utf-8" %>
<%@page import="java.util.HashMap" %>
<%@page import="util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP starting page</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String biao = request.getParameter("biao");

    String sql = "update " + biao + " set iszf='是' , zhuangtai='未交付' where id='" + id + "'";

    new CommDAO().commOper(sql);


    new CommDAO().commOper("update caipinxinxi s,dingdan_dingdanxinxi dd SET s.kucun=s.kucun-dd.goumaishuliang,s.xiaoliang=s.xiaoliang+dd.goumaishuliang WHERE s.id=dd.caipinxinxiid AND dingdanid='"+id+"'");



    HashMap order = Query.make(biao).find(id);
    if ("dingdan".equals(biao)) {


    }

    out.print("<script>alert('支付成功!!');location.href='" + (Request.get("referer").equals("") ? "sy.do" : Request.get("referer")) + "';</script>");


%>
</body>
</html>

