<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ page import="util.StringUtil" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单信息</title>

    <link rel="stylesheet" href="css.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery.validate.js"></script>

    <link rel="stylesheet" href="js/layer/theme/default/layer.css"/>
    <script src="js/layer/layer.js"></script>

</head>
<body>

<% HashMap map = Query.make("dingdan").where("id", request.getParameter("id")).find(); %>

<div class="">

    <%
        List<HashMap> list = Query.make("dingdan_dingdanxinxi").where("dingdanid", map.get("id")).order("id desc").select();
    %>

    <div class="list-table">
        <table width="100%" border="1" class="table table-bordered table-hover" align="center" cellpadding="3"
               cellspacing="1" bordercolor="00FFFF">
            <thead>
            <tr>
                <th width="60" align="center" bgcolor="CCFFFF">序号</th>
                <th bgcolor="#CCFFFF"> 菜品编号</th>
                <th bgcolor="#CCFFFF"> 菜品名称</th>
                <th bgcolor="#CCFFFF"> 折扣价</th>
                <th bgcolor="#CCFFFF"> 购买数量</th>
                <th bgcolor="#CCFFFF"> 小计</th>
                <th width="120" align="center" bgcolor="CCFFFF">操作</th>
            </tr>
            </thead>
            <tbody>
            <%
                int i = 0;
                String[] ids = new String[list.size()];
                for (HashMap mp : list) {
                    ids[i] = mp.get("caipinxinxiid").toString();
                    i++;

            %>
            <tr>
                <td width="30" align="center"><%= mp.get("id") %>
                </td>
                <td><%= mp.get("caipinbianhao") %>
                </td>
                <td><%= mp.get("caipinmingcheng") %>
                </td>
                <td><%= mp.get("zhekoujia") %>
                </td>
                <td><%= mp.get("goumaishuliang") %>
                </td>
                <td><%= mp.get("xiaoji") %>
                </td>
                <td align="center">
                    <% if (Query.make("pinglun").where("biao", "caipinxinxi").where("biaoid", mp.get("caipinxinxiid")).where("qitaid", map.get("id")).count() == 0) { %>
                    <a href="pinglun_add.jsp?id=<%=mp.get("caipinxinxiid")%>&biao=caipinxinxi&qitaid=<%=map.get("id")%>">
                        评论</a>
                    <% } %>

                    <!--qiatnalijne-->
                </td>
            </tr>

            <%
                }
            %>
            </tbody>
        </table>
    </div>
</div>


<%--<div class="neirong pinlun">
    <table width="100%" class="table table-pinglun">
        <tr>

            <td width="471" bgcolor='#CCFFFF'>
                评价内容
            </td>
            <td width="88" bgcolor='#CCFFFF'>
                评分
            </td>
            <td width="88" bgcolor='#CCFFFF'>
                评论人
            </td>
            <td width="138" align="center" bgcolor="CCFFFF">
                评论时间
            </td>
        </tr>
        <%
            String sql = "select * from pinglun where wenzhangID in (" + StringUtil.join(",", ids)
                    + ") and biao='shangpinxinxi' ";
            sql += " order by id desc";
            for (HashMap pl : new CommDAO().select(sql)) {
        %>


        <tr>

            <td width="471" bgcolor='#CCFF99'><%=pl.get("pinglunneirong")%>
            </td>
            <td width="88" bgcolor='#CCFF99'><%=pl.get("pingfen")%>
            </td>
            <td width="88" bgcolor='#CCFF99'><%=pl.get("pinglunren")%>
            </td>
            <td width="138" align="center" bgcolor="CCFF99"><%=pl.get("addtime")%>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>--%>
<%--

<div class="button-list">
    <div class="">
        <button onclick="history.go(-1);" class="btn btn-default">返回</button>
        <button onclick="window.print()" class="btn btn-default">打印</button>
        <script>
            function pinglun(nbiao, nid) {
                layer.open({
                    type: 2, title: '评价',
                    fixed: true, shadeClose: true,
                    shade: 0.5, area: ['550px', '250px'],
                    content: 'comment.do?biao=' + nbiao + '&id=' + nid
                });
            }
        </script>
    </div>
</div>
--%>


</body>
</html>
