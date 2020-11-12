<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages0" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>账号管理</span>
    </a>
    <div id="pages0" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="admins_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">管理员账号管理</a>
            </li>
            <li class="sidebar-list-item"><a href="admins_add.do" target="main" class="sidebar-link text-muted pl-lg-5">管理员账号添加</a>
            </li>
            <li class="sidebar-list-item"><a href="xuesheng_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">添加新用户</a>
            </li>
            <li class="sidebar-list-item"><a href="xuesheng_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">注册用户管理</a>
            </li>
            <li class="sidebar-list-item"><a href="mod.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">密码修改</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages1" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>系统管理</span>
    </a>
    <div id="pages1" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="lunbotu_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">轮播图添加</a>
            </li>
            <li class="sidebar-list-item"><a href="lunbotu_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">轮播图查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages2" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>店家管理</span>
    </a>
    <div id="pages2" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="dianjia_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">店家添加</a>
            </li>
            <li class="sidebar-list-item"><a href="dianjia_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">店家查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages3" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>菜品信息管理</span>
    </a>
    <div id="pages3" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="caipinfenlei_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">菜品分类添加</a>
            </li>
            <li class="sidebar-list-item"><a href="caipinfenlei_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">菜品分类查询</a>
            </li>
            <li class="sidebar-list-item"><a href="caipinxinxi_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">菜品信息添加</a>
            </li>
            <li class="sidebar-list-item"><a href="caipinxinxi_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">菜品信息查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages4" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>购物车管理</span>
    </a>
    <div id="pages4" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="gouwuche_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">购物查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages5" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>订单管理</span>
    </a>
    <div id="pages5" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
          
            <li class="sidebar-list-item"><a href="dingdan_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">订单查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages6" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>交付管理</span>
    </a>
    <div id="pages6" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="jiaofu_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">交付查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages7" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>评论管理</span>
    </a>
    <div id="pages7" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="pinglun_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">评论查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages8" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>在线投诉管理</span>
    </a>
    <div id="pages8" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="zaixiantousu_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">在线投诉查询</a>
            </li>
        </ul>
    </div>
</li>
