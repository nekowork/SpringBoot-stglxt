package com.spring.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 控制器基类
 */
abstract public class BaseController {
    @Autowired
    protected HttpServletRequest request; // 注入
    @Autowired
    protected HttpServletResponse response; // 注入
    @Autowired
    protected HttpSession session; // 注入

    protected ModelAndView mView;

    /**
     * 控制器
     */
    public BaseController()
    {
        //request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        //response = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
        mView = new ModelAndView();
    }

    /**
     * 往模板中写入数据
     * @param name
     * @param value
     */
    protected void assign(String name , Object value)
    {
        request.setAttribute(name , value);
    }

    /**
     * 弹出框
     * @param message
     * @param code
     * @param jumpUrl
     * @param jumpTime
     * @return
     */
    protected String showMessage( String message , int code , String jumpUrl , int jumpTime)
    {
        assign("message" , message);
        assign("code" , code);
        assign("jumpUrl" , jumpUrl);
        assign("jumpTime" , jumpTime);

        return "message";
    }

    /**
     * 检测是否登录
     * @return
     */
    protected boolean checkLogin()
    {
        if(request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username")))
        {
            return false;
        }
        return true;
    }

    /**
     * 弹出错误信息
     * @param message
     * @return
     */
    protected String showError(String message)
    {
        return showMessage(message , 1 , "javascript:history(-1);" , 2250);
    }

    /**
     *  弹出错误信息
     * @param message
     * @param code
     * @return
     */
    protected String showError(String message , int code)
    {
        return showMessage(message , code , "javascript:history(-1);" , 2250);
    }

    /**
     * 弹出错误信息
     * @param message
     * @param url
     * @return
     */
    protected String showError(String message , String url)
    {
        return showMessage(message , 1 , url , 2250);
    }

    /**
     * 弹出成功信息
     * @param message
     * @return
     */
    protected String showSuccess(String message )
    {
        return showMessage(message , 0 , request.getHeader("referer") , 2250);
    }

    /**
     * 弹出成功信息
     * @param message
     * @param url
     * @return
     */
    protected String showSuccess(String message , String url)
    {
        return showMessage(message , 0 , url , 2250);
    }


}
