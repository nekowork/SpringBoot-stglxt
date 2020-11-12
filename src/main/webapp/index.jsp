<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="js/swiper/swiper.css">
<script src="js/swiper/swiper.js"></script>
<link href="js/owl/owl.carousel.min.css" rel="stylesheet">
<script src="js/owl/owl.carousel.min.js"></script>


<div class="" style="">

    ${bhtList = Query.make("lunbotu").order("id desc").limit(5).select();""}


    <div class="swiper-container" id="banner17">
        <div class="swiper-wrapper">
            <c:forEach items="${bhtList}" var="bht"><c:set var="bht" value="${bht}" scope="request"/>
                <div class="swiper-slide">
                    <div class="decoimg_b2">
                        <a class="btn btn-" href="${bht.url}"
                           style="background-image: url('${bht.image}'); height: 380px"></a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>
        <!-- 如果需要导航按钮 -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>


    <script>
        var mySwiper = new Swiper('#banner17', {
            loop: true, // 循环模式选项
            autoplay: {
                delay: 3000,
                disableOnInteraction: false
            },
            // 如果需要分页器
            pagination: {
                el: '.swiper-pagination',
            },
            // 如果需要前进后退按钮
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            // 如果需要滚动条
            /*scrollbar: {
                el: '.swiper-scrollbar',
            },*/
        })
    </script>


</div>

<div class="" style="">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">

            <div class="col-sm-8 col-md-8">


                <div class="title-modelbox-widget wow bounce" data-wow-duration="1s" data-wow-delay="0s"
                     data-wow-iteration="1" style="box-shadow:0px 0px 10px 10px #6A5353">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="caipinxinxilist.do">更多>></a>
                        </div>
                        菜品热度
                    </h3>
                    <div class="sidebar-widget-body">


                        <div class="blog_carousel clearfix">
                            ${caipinxinxilist21 = Query.make("caipinxinxi").limit(4).order("xiaoliang desc").select();""}
                            <div class="clearfix">
                                <c:forEach items="${caipinxinxilist21}" var="r"><c:set var="r" value="${r}"
                                                                                       scope="request"/>
                                    <div class="article-col" style="width: 25%">
                                        <article class="single_blog">
                                            <figure>
                                                <div class="blog_thumb">
                                                    <a href="caipinxinxidetail.do?id=${r.id}" class="img-box pb80">
                                                        <div class="img"
                                                             style="background-image: url('${r.caipintupian}')">
                                                        </div>
                                                    </a>
                                                </div>
                                                <figcaption class="blog_content">
                                                    <h4 class="post_title">
                                                        <a href="caipinxinxidetail.do?id=${r.id}">
                                                                ${Info.subStr(r.caipinmingcheng, 20)}
                                                        </a>
                                                    </h4>
                                                    <div class="articles_date">
                                                            <%--  <span><i class="fa fa-calendar"
                                                                       aria-hidden="true"></i> ${r.addtime}</span>--%>
                                                        <span v-if="vo.senduser"><i class="fa fa-user"
                                                                                    aria-hidden="true"></i> ${Info.subStr(r.faburen, 20)}</span>
                                                    </div>
                                                    <p class="post_desc">
                                                            ${Info.subStr(r.caipinxiangqing, 45)}
                                                    </p>
                                                    <a href="caipinxinxidetail.do?id=${r.id}" class="btn-see">+
                                                        查看详情 <br></a>


                                                    <span class="article-price">￥ ${r.jiage}</span>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>


                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>


            </div>
            <div class="col-sm-4 col-md-4">


                <div class="title-modelbox-widget wow bounce" data-wow-duration="1s" data-wow-delay="0s"
                     data-wow-iteration="1" style="box-shadow:0px 0px 10px 10px #564343">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="caipinxinxilist.do">更多>></a>
                        </div>
                        新菜品
                    </h3>
                    <div class="sidebar-widget-body">


                        <div class="module-products clearfix">
                            ${caipinxinxilist24 = Query.make("caipinxinxi").limit(1).order("id desc").select();""}
                            <div class="products clearfix">
                                <c:forEach items="${caipinxinxilist24}" var="r"><c:set var="r" value="${r}"
                                                                                       scope="request"/>
                                    <div class="products-col" style="width: 100%">
                                        <article>
                                            <a href="caipinxinxidetail.do?id=${r.id}" class="pro-btn pro-btn-add">
                                                查看
                                            </a>
                                            <div class="figure-grid">
                                                <div class="image">
                                                    <div class="img-box pb100">
                                                        <a class="img" href="caipinxinxidetail.do?id=${r.id}"
                                                           style="background-image: url('${r.caipintupian}')"></a>
                                                    </div>
                                                </div>
                                                <div class="text">
                                                    <h2 class="title h4">
                                                        <a href="caipinxinxidetail.do?id=${r.id}">
                                                                ${r.caipinmingcheng}
                                                        </a>
                                                    </h2>
                                                    <sup>￥ ${r.jiage}</sup>
                                                    <span class="description clearfix">
                                                            ${Info.subStr(r.caipinxiangqing , 12)}
                                                    </span>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>


                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>


            </div>


        </div>

        <!-- container定宽，并剧中结束 --></div>


</div>
<div class="" style="">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">

            <div class="col-sm-12 col-md-12">


                <div class="title-modelbox-widget wow rubberBand" data-wow-duration="1s" data-wow-delay="0s"
                     data-wow-iteration="1" style="box-shadow:0px 0px 10px 10px #624545">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="caipinxinxilist.do">更多>></a>
                        </div>
                        推荐菜品
                    </h3>
                    <div class="sidebar-widget-body">


                        <div class="shop-product-xz">
                            ${caipinxinxilist29 = Query.make("caipinxinxi").limit(4).order("rand()").select();""}
                            <div class="clearfix">
                                <c:forEach items="${caipinxinxilist29}" var="r"><c:set var="r" value="${r}"
                                                                                       scope="request"/>
                                    <div class="products-col" style="width: 25%">
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a class="primary_img img-box pb100"
                                                       href="caipinxinxidetail.do?id=${r.id}">
                                                        <div class="img"
                                                             style="background-image: url('${r.caipintupian}')">
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