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
<script src="js/jquery.validate.js"></script>


<div class="" style="">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">

            <div class="col-sm-12 col-md-12">


                <div class="title-modelbox-widget">
                    <h3 class="section-title">
                        菜品详情 </h3>
                    <div class="sidebar-widget-body">


                        <div class="">
                            <div class="goods-info clearfix">
                                <div class="gallery-list">
                                    <div class="swiper-container gallery-top" id="shangpin-galler">
                                        <div class="swiper-wrapper">
                                        </div>
                                    </div>
                                    <div class="swiper-container gallery-thumbs" id="shangpin-thumb">
                                        <div class="swiper-wrapper">
                                        </div>
                                    </div>
                                </div>
                                <div class="goods-right-content">
                                    <h3 class="title">${map.caipinmingcheng}</h3>
                                    <div class="descount">
                                        <div>
                        <span class="name">
                            价格：
                        </span>
                                            <span class="val">
                                                ${map.jiage} </span>
                                        </div>
                                        <div>
                        <span class="name">
                            销量：
                        </span>
                                            <span class="val">
                                                ${map.xiaoliang} </span>
                                        </div>
                                        <div>
                        <span class="name">
                            评分：
                        </span>
                                            <span class="val">
                                                ${map.pingfen} </span>
                                        </div>


                                        <div>
                        <span class="name">
                            库存：
                        </span>
                                            <span class="val">
                                                ${map.kucun} </span>
                                        </div>
                                        <div>
                        <span class="name">
                            折扣价：
                        </span>
                                            <span class="val">
                                                ${map.zhekoujia} </span>
                                        </div>
                                    </div>

                                    ${readMap = Query.make("caipinxinxi").where("id", param.id).find();""}
                                    <form class="form-inline" action="gouwucheinsert.do" id="form1" method="post">
                                        <!-- form 标签开始 -->


                                        <div style="display: none">
                                            <input type="hidden" name="issh" value="否"/>

                                            <input type="hidden" id="caipinbianhao" name="caipinbianhao"
                                                   value="${Info.html(map.caipinbianhao)}"/>
                                            <input type="hidden" id="caipinmingcheng" name="caipinmingcheng"
                                                   value="${Info.html(map.caipinmingcheng)}"/>
                                            <input type="hidden" id="fenlei" name="fenlei"
                                                   value="${Info.html(map.fenlei)}"/>
                                            <input type="hidden" id="caipintupian" name="caipintupian"
                                                   value="${Info.html(map.caipintupian)}"/>
                                            <input type="hidden" id="jiage" name="jiage"
                                                   value="${Info.html(map.jiage)}"/>
                                            <input type="hidden" id="faburen" name="faburen"
                                                   value="${Info.html(map.faburen)}"/>
                                            <input type="hidden" id="zhekoujia" name="zhekoujia"
                                                   value="${Info.html(map.zhekoujia)}"/>
                                            <input type="text" class="form-control" style="width:150px;"
                                                   readonly="readonly" id="goumairen" name="goumairen"
                                                   value="${sessionScope.username}"/>
                                            <input type="hidden" name="caipinxinxiid" value="${map.id}"/>
                                            <input name="referer" id="referer" value="" type="hidden"/>
                                            <script>
                                                $('#referer').val(location.href);
                                            </script>
                                        </div>

                                        <div class="mt10">
                                            <div class="spec-list">
                                            </div>

                                            <div class="mt10">
                                                <div class="form-group mt10">
                                                    购买数量：

                                                    <input type="number" class="form-control" style="width:150px;"
                                                           data-rule-required="true" data-msg-required="请填写购买数量"
                                                           number="true" data-msg-number="输入一个有效数字" min="1"
                                                           max="${readMap.kucun}" id="goumaishuliang"
                                                           name="goumaishuliang" value=""/>
                                                </div>
                                            </div>

                                            <div class="mt10">
                                                <c:choose>
                                                    <c:when test="${sessionScope.username == null || '' == sessionScope.username }">

                                                        <button type="button" class="btn btn-primary"
                                                                onclick="alert('你尚未登录，请登录后操作')">
                                                            加入购物车
                                                        </button>
                                                    </c:when><c:otherwise>
                                                    <button type="submit" class="btn btn-primary">
                                                        加入购物车
                                                    </button>
                                                </c:otherwise></c:choose>

                                                <button type="button" class="btn btn-default"
                                                        onclick="location.href='collect.do?id=${map.id}&biao=caipinxinxi&ziduan=caipinmingcheng'">
                                                    收藏
                                                </button>
                                            </div>
                                        </div>

                                        <!--form标签结束--></form>
                                    <script>
                                        $(function () {
                                            $('#form1').validate();
                                        })
                                    </script>
                                </div>
                            </div>
                            <div class="goods-content">
                                ${map.caipinxiangqing}
                            </div>

                            <script>
                                (function () {
                                    var images = "${map.caipintupian}".split(",");
                                    if (images.length > 0) {
                                        for (var i = 0; i < images.length; i++) {
                                            var path = images[i]
                                            var src = '<div class="swiper-slide"><div class="img-box pb100"><div class="img" style="background-image: url(' + path + ')"></div></div></div>';
                                            $('#shangpin-galler .swiper-wrapper').append(src);
                                            $('#shangpin-thumb .swiper-wrapper').append(src);
                                        }

                                        var thumbsSwiper = new Swiper('#shangpin-thumb', {
                                            spaceBetween: 10,
                                            slidesPerView: 4,
                                            watchSlidesVisibility: true,//防止不可点击
                                        })
                                        var gallerySwiper = new Swiper('#shangpin-galler', {
                                            spaceBetween: 10,
                                            thumbs: {
                                                swiper: thumbsSwiper,
                                            }
                                        })
                                    }

                                })();

                            </script>

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


                <div class="title-modelbox-widget">
                    <h3 class="section-title">

                        评论列表
                    </h3>
                    <div class="sidebar-widget-body">


                        <div class="list-table">
                            ${pinglunlist14 = Query.make("pinglun").where("biaoid",Info.jstl("map.id")).limit(6).order("id desc").select();""}
                            <table width="100%" border="1" class="table table-list table-bordered table-hover">
                                <thead>
                                <tr align="center">
                                    <th> 标题</th>
                                    <th> 评分</th>
                                    <th> 评论内容</th>
                                    <th> 评论人</th>
                                </tr>
                                </thead>
                                <tbody>


                                <c:set var="$i" value="0"/><c:forEach items="${pinglunlist14}" var="r"><c:set var="$i"
                                                                                                              value="${$i+1}"/><c:set
                                        var="r" value="${r}" scope="request"/>
                                    <tr>
                                        <td> ${r.biaoti} </td>
                                        <td> ${r.pingfen} </td>
                                        <td> ${r.pinglunneirong} </td>
                                        <td> ${r.pinglunren} </td>


                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
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