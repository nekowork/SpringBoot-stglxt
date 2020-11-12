<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>

<link href="js/owl/owl.carousel.min.css" rel="stylesheet">
<script src="js/owl/owl.carousel.min.js"></script>


<div class="" style="" >

    

<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">
    
                        <div class="col-sm-12 col-md-12">
    
                

    

<div class="title-modelbox-widget">
        <h3 class="section-title">
                        <div class="more">
                <a href="caipinxinxilist.do">更多>></a>
            </div>
                        菜品列表        </h3>
        <div class="sidebar-widget-body">
            

    

<div class="shop-product-xz">
                <div class="clearfix">
            <c:forEach items="${list}" var="r"><c:set var="r" value="${r}" scope="request" />
            <div class="products-col" style="width: 25%">
                <article class="single_product">
                    <figure>
                        <div class="product_thumb">
                                                        <a class="primary_img img-box pb100 img-scale" href="caipinxinxidetail.do?id=${r.id}">
                                <div class="img" style="background-image: url('${r.caipintupian}')">
                                    <img src="${r.caipintupian}" alt=""/>
                                </div>
                            </a>
                                                    </div>
                        <figcaption class="product_content">
                            <h4 class="product_name">
                                <a href="caipinxinxidetail.do?id=${r.id}">
                                    ${r.caipinmingcheng}
                                </a>
                            </h4>
                                                        <div class="price_box">
                                                                <span class="current_price">￥${r.jiage}</span>
                                                                                                <span class="old_price">￥${r.zhekoujia}</span>
                                                            </div>
                                                        <div class="add_to_cart">
                                <a href="caipinxinxidetail.do?id=${r.id}" title="查看详情">查看详情</a>
                            </div>
                        </figcaption>
                    </figure>
                </article>
            </div>
            </c:forEach>
        </div>
                    ${page.info}
            </div>




        </div>
        <!-- /.sidebar-widget-body -->
    </div>



            
</div>
                                    
                                            
</div>
    
<!-- container定宽，并剧中结束 --></div>



</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>