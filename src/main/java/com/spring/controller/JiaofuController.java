package com.spring.controller;

import com.spring.dao.JiaofuMapper;
import com.spring.entity.Jiaofu;
import com.spring.service.JiaofuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;
import java.util.*;


import com.spring.entity.Dingdan;
import com.spring.service.DingdanService;

/**
 * 交付 */
@Controller
public class JiaofuController extends BaseController
{
    @Autowired
    private JiaofuMapper dao;
    @Autowired
    private JiaofuService service;

    @Autowired
    private DingdanService serviceRead;
    /**
     *  后台列表页
     *
     */
    @RequestMapping("/jiaofu_list")
    public String list()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Jiaofu.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if(sort.equals("desc")){        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        }else{
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1 , page);  // 取两个数的最大值，防止page 小于1
        List<Jiaofu> list = service.selectPageExample(example , page , 12);   // 获取当前页的行数
        // 生成统计语句
        HashMap total = Query.make("jiaofu").field("(sum(dingdanjine)) sum_dingdanjine").where(where).find();
        // 将统计语句写给界面调用
        request.setAttribute("total" , total);
        // 将列表写给界面使用
        request.setAttribute("list" , list);
        assign("orderby" , order);  // 把当前排序结果写进前台
        assign("sort" , sort);      // 把当前排序结果写进前台
        assign("where" , where);    // 把当前条件写给前台
        return "jiaofu_list";   // 使用视图文件：WebRoot\jiaofu_list.jsp
    }

    public String getWhere()
    {
        String where = " ";
        // 判断URL 参数dingdanid是否大于0
        if( Request.getInt("dingdanid") > 0 ) {
            // 大于0 则写入条件
            where += " AND dingdanid='"+Request.getInt("dingdanid")+"' ";
        }
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
            if(!Request.get("dingdanbianhao").equals("")) {
            where += " AND dingdanbianhao LIKE '%"+Request.get("dingdanbianhao")+"%' ";
        }
                if(!Request.get("dingdanxinxi").equals("")) {
            where += " AND dingdanxinxi LIKE '%"+Request.get("dingdanxinxi")+"%' ";
        }
            return where;
    }

    /**
     * 下单人列表
     */
    @RequestMapping("/jiaofu_list_xiadanren")
    public String listxiadanren()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }
        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Jiaofu.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：下单人=当前登录用户
        String where = " xiadanren='"+request.getSession().getAttribute("username")+"' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if(sort.equals("desc")){        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        }else{
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1 , page); // 注释同list

            List<Jiaofu> list = service.selectPageExample(example , page , 12);
                HashMap total = Query.make("jiaofu").field("(sum(dingdanjine)) sum_dingdanjine").where(where).find();
        request.setAttribute("total" , total);
    
        request.setAttribute("list" , list);
        assign("orderby" , order);
        assign("sort" , sort);
        assign("where" , where);
        return "jiaofu_list_xiadanren";
    }
    /**
     * 交付人列表
     */
    @RequestMapping("/jiaofu_list_jiaofuren")
    public String listjiaofuren()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }
        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Jiaofu.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：交付人=当前登录用户
        String where = " jiaofuren='"+request.getSession().getAttribute("username")+"' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if(sort.equals("desc")){        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        }else{
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1 , page); // 注释同list

            List<Jiaofu> list = service.selectPageExample(example , page , 12);
                HashMap total = Query.make("jiaofu").field("(sum(dingdanjine)) sum_dingdanjine").where(where).find();
        request.setAttribute("total" , total);
    
        request.setAttribute("list" , list);
        assign("orderby" , order);
        assign("sort" , sort);
        assign("where" , where);
        return "jiaofu_list_jiaofuren";
    }




        @RequestMapping("/jiaofu_add")
    public String add()
    {
        int id = Request.getInt("id");  // 根据id 获取 订单模块中的数据
        Dingdan readMap = serviceRead.find(id);
        // 将数据行写入给前台jsp页面
        request.setAttribute("readMap" , readMap);
        return "jiaofu_add";
    }



    @RequestMapping("/jiaofu_updt")
    public String updt()
    {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Jiaofu mmm = service.find(id);
        request.setAttribute("mmm" , mmm);
        request.setAttribute("updtself" , 0);
        return "jiaofu_updt";
    }
    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/jiaofuinsert")
    public String insert()
    {
        String tmp="";
        Jiaofu post = new Jiaofu();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setDingdanbianhao(Request.get("dingdanbianhao"));

        post.setDingdanxinxi(Request.get("dingdanxinxi"));

        post.setDingdanjine(Request.getDouble("dingdanjine"));

        post.setXiadanren(Request.get("xiadanren"));

        post.setBeizhu(Request.get("beizhu"));

        post.setJiaofuren(Request.get("jiaofuren"));

        post.setDingdanid(Request.getInt("dingdanid"));

        
        post.setAddtime(Info.getDateStr()); // 设置添加时间
                service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        Query.execute("update dingdan set zhuangtai = '已交付' where id ='"+request.getParameter("dingdanid")+"'");



        return showSuccess("保存成功" , Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
    * 更新内容
    * @return
    */
    @RequestMapping("/jiaofuupdate")
    public String update()
    {
        // 创建实体类
        Jiaofu post = new Jiaofu();
        // 将前台表单数据填充到实体类
        if(!Request.get("dingdanbianhao").equals(""))
        post.setDingdanbianhao(Request.get("dingdanbianhao"));
                if(!Request.get("dingdanxinxi").equals(""))
        post.setDingdanxinxi(Request.get("dingdanxinxi"));
                if(!Request.get("dingdanjine").equals(""))
        post.setDingdanjine(Request.getDouble("dingdanjine"));
            if(!Request.get("xiadanren").equals(""))
        post.setXiadanren(Request.get("xiadanren"));
                if(!Request.get("beizhu").equals(""))
        post.setBeizhu(Request.get("beizhu"));
                if(!Request.get("jiaofuren").equals(""))
        post.setJiaofuren(Request.get("jiaofuren"));
        
        post.setId(Request.getInt("id"));
                service.update(post); // 更新数据
        int charuid = post.getId().intValue();
                        return showSuccess("保存成功" , Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }
        /**
    *  删除
    */
    @RequestMapping("/jiaofu_delete")
    public String delete()
    {
        if(!checkLogin()){
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap delMap = Query.make("jiaofu").find(id);

                service.delete(id);// 根据id 删除某行数据
                return showSuccess("删除成功",request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
