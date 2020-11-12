package com.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import util.Request;
import com.spring.entity.Admins;
import com.spring.service.AdminsService;

import com.spring.entity.Xuesheng;
import com.spring.service.XueshengService;

import com.spring.entity.Dianjia;
import com.spring.service.DianjiaService;


/**
 * 用户登录更新密码控制器
 */
@Controller
public class UserController extends BaseController{

        @Resource
    private AdminsService adminsService;
        @Resource
    private XueshengService xueshengService;
        @Resource
    private DianjiaService dianjiaService;
    
    /**
     * 登录页面
     * @return
     */
    @RequestMapping("/login")
    public String Index()
    {
        return "login";
    }

    /**
     * 退出
     * @return
     */
    @RequestMapping("/logout")
    public String Logout()
    {
        request.getSession().invalidate();
        return showSuccess("退出成功" , "./");
    }

    /**
     * 验证登录用户
     * @param isAdmin
     * @param username
     * @param pwd
     * @param cx
     * @return
     */
    protected String authLoginUser(boolean isAdmin,String username , String pwd,String cx)
    {
        if(username == null || "".equals(username) ){
            return showError( "账号不允许为空" );
        }
        if(pwd == null || "".equals(pwd) ){
            return showError( "密码不允许为空" );
        }
        if(cx == null){
            return showError( "请选中登录类型" );
        }

        String random = (String) request.getSession().getAttribute("random");
        String pagerandom = request.getParameter("pagerandom") == null ? "" : request.getParameter("pagerandom");

        if(request.getParameter("a")!=null && !pagerandom.equals(random)){
            return showError( "验证码不正确" );
        }

        if (cx.equals("管理员")) {
            Admins user = adminsService.login(username , pwd);
            if(user == null){
                return showError("用户名或密码错误");
            }
                        session.setAttribute("id" , user.getId());
            session.setAttribute("username" , user.getUsername());
            session.setAttribute("cx" , cx);
            session.setAttribute("login" , cx);
                        session.setAttribute("username", user.getUsername());
                        session.setAttribute("pwd", user.getPwd());
            
        }
        if (cx.equals("学生")) {
            Xuesheng user = xueshengService.login(username , pwd);
            if(user == null){
                return showError("用户名或密码错误");
            }
                        session.setAttribute("id" , user.getId());
            session.setAttribute("username" , user.getXuehao());
            session.setAttribute("cx" , cx);
            session.setAttribute("login" , cx);
                        session.setAttribute("xuehao", user.getXuehao());
                        session.setAttribute("mima", user.getMima());
                        session.setAttribute("xingming", user.getXingming());
                        session.setAttribute("xingbie", user.getXingbie());
                        session.setAttribute("nianling", user.getNianling());
                        session.setAttribute("shouji", user.getShouji());
                        session.setAttribute("shenfenzheng", user.getShenfenzheng());
                        session.setAttribute("touxiang", user.getTouxiang());
            
        }
        if (cx.equals("店家")) {
            Dianjia user = dianjiaService.login(username , pwd);
            if(user == null){
                return showError("用户名或密码错误");
            }
                        session.setAttribute("id" , user.getId());
            session.setAttribute("username" , user.getZhanghao());
            session.setAttribute("cx" , cx);
            session.setAttribute("login" , cx);
                        session.setAttribute("zhanghao", user.getZhanghao());
                        session.setAttribute("mima", user.getMima());
                        session.setAttribute("dianjiamingcheng", user.getDianjiamingcheng());
                        session.setAttribute("shoujihaoma", user.getShoujihaoma());
                        session.setAttribute("dizhi", user.getDizhi());
                        session.setAttribute("youxiang", user.getYouxiang());
            
        }

        String referer = request.getParameter("referer");
        if(referer == null){
            if(isAdmin){
                referer = "./main.do";
            }else{
                referer = "./";
            }
        }
        return showSuccess("登录成功" , referer);
    }

    /**
     * 后台主页面
     * @return
     */
    @RequestMapping("/main")
    public String main() {
        return "main";
    }

    /**
     * 后台初始页面
     * @return
     */
    @RequestMapping("/sy")
    public String sy() {
        return "sy";
    }

    /**
     * 不一定有
     * @return
     */
    @RequestMapping("/mygo")
    public String mygo() {
        return "mygo";
    }

    /**
     * 头部页面
     * @return
     */
    @RequestMapping("/top")
    public String top() {
        return "top";
    }

    /**
     * 验证登录页面
     * @return
     */
    @RequestMapping("/authLogin")
    public String authLogin()
    {
        String username = Request.get("username");
        String pwd  = Request.get("pwd");
        String cx = Request.get("cx");
        return authLoginUser(false , username,pwd,cx);
    }

    /**
     * 验证后台登录
     * @return
     */
    @RequestMapping("/authAdminLogin")
    public String authAdminLogin()
    {
        String username = Request.get("username");
        String pwd  = Request.get("pwd");
        String cx = Request.get("cx");
        return authLoginUser(true , username,pwd,cx);
    }

    /**
     * 修改登录密码页面
     * @return
     */
    @RequestMapping("/mod")
    public String mod()
    {
        return "mod";
    }

    /**
     * 保存修改密码
     * @return
     */
    @RequestMapping("/editPassword")
    public String editPassword()
    {
        String username = request.getSession().getAttribute("username").toString();
        String cx = request.getSession().getAttribute("login").toString();
        String oldPassword = Request.get("oldPassword");
        String newPwd  = Request.get("newPwd");
        String newPwd2 = Request.get("newPwd2");

        if(!newPwd.equals(newPwd2)){
            return showError("两次密码不一致");
        }


        if (cx.equals("管理员")) {
            Admins user = adminsService.login(username , oldPassword);
            if(user == null){
                return showError("原密码不正确");
            }
            adminsService.updatePassword(user.getId() , newPwd);
        }
        if (cx.equals("学生")) {
            Xuesheng user = xueshengService.login(username , oldPassword);
            if(user == null){
                return showError("原密码不正确");
            }
            xueshengService.updatePassword(user.getId() , newPwd);
        }
        if (cx.equals("店家")) {
            Dianjia user = dianjiaService.login(username , oldPassword);
            if(user == null){
                return showError("原密码不正确");
            }
            dianjiaService.updatePassword(user.getId() , newPwd);
        }
        return showSuccess("修改密码成功" , "./mod.do");
    }
}
