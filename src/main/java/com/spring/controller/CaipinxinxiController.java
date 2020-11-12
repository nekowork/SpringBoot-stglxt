package com.spring.controller;

import com.spring.dao.CaipinxinxiMapper;
import com.spring.entity.Caipinxinxi;
import com.spring.service.CaipinxinxiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;
import java.util.*;



/**
 * 菜品信息 */
@Controller
public class CaipinxinxiController extends BaseController
{
    @Autowired
    private CaipinxinxiMapper dao;
    @Autowired
    private CaipinxinxiService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/caipinxinxi_list")
    public String list()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Caipinxinxi.class); //  创建一个扩展搜索类
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
        List<Caipinxinxi> list = service.selectPageExample(example , page , 12);   // 获取当前页的行数
        // 将列表写给界面使用
        request.setAttribute("list" , list);
        assign("orderby" , order);  // 把当前排序结果写进前台
        assign("sort" , sort);      // 把当前排序结果写进前台
        assign("where" , where);    // 把当前条件写给前台
        return "caipinxinxi_list";   // 使用视图文件：WebRoot\caipinxinxi_list.jsp
    }

    public String getWhere()
    {
        String where = " ";
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
            if(!Request.get("caipinbianhao").equals("")) {
            where += " AND caipinbianhao LIKE '%"+Request.get("caipinbianhao")+"%' ";
        }
                if(!Request.get("caipinmingcheng").equals("")) {
            where += " AND caipinmingcheng LIKE '%"+Request.get("caipinmingcheng")+"%' ";
        }
                if(!Request.get("fenlei").equals("")) {
            where += " AND fenlei ='"+Request.get("fenlei")+"' ";
        }
            return where;
    }

    /**
     * 发布人列表
     */
    @RequestMapping("/caipinxinxi_list_faburen")
    public String listfaburen()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }
        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Caipinxinxi.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：发布人=当前登录用户
        String where = " faburen='"+request.getSession().getAttribute("username")+"' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if(sort.equals("desc")){        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        }else{
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1 , page); // 注释同list

            List<Caipinxinxi> list = service.selectPageExample(example , page , 12);
        
        request.setAttribute("list" , list);
        assign("orderby" , order);
        assign("sort" , sort);
        assign("where" , where);
        return "caipinxinxi_list_faburen";
    }


    /**
    *  前台列表页
    *
    */
    @RequestMapping("/caipinxinxilist")
    public String index()
    {
        String order = Request.get("order" , "id");
        String sort  = Request.get("sort" , "desc");

        Example example = new Example(Caipinxinxi.class);
        Example.Criteria criteria = example.createCriteria();
        String where = " 1=1 ";
        where += getWhere();
        criteria.andCondition(where);
        if(sort.equals("desc")){
            example.orderBy(order).desc();
        }else{
            example.orderBy(order).asc();
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
        page = Math.max(1 , page);
            List<Caipinxinxi> list = service.selectPageExample(example , page , 12);
        
        request.setAttribute("list" , list);
        request.setAttribute("where" , where);
        assign("orderby" , order);
        assign("sort" , sort);
        return "caipinxinxilist";
    }


        @RequestMapping("/caipinxinxi_add")
    public String add()
    {
        return "caipinxinxi_add";
    }



    @RequestMapping("/caipinxinxi_updt")
    public String updt()
    {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Caipinxinxi mmm = service.find(id);
        request.setAttribute("mmm" , mmm);
        request.setAttribute("updtself" , 0);
        return "caipinxinxi_updt";
    }
    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/caipinxinxiinsert")
    public String insert()
    {
        String tmp="";
        Caipinxinxi post = new Caipinxinxi();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setCaipinbianhao(Request.get("caipinbianhao"));

        post.setCaipinmingcheng(Request.get("caipinmingcheng"));

        post.setFenlei(Request.get("fenlei"));

        post.setCaipintupian(Request.get("caipintupian"));

        post.setPingfen(Request.getDouble("pingfen"));

        post.setJiage(Request.getDouble("jiage"));

        post.setZhekoujia(Request.getInt("zhekoujia"));

        post.setXiaoliang(Request.getInt("xiaoliang"));

        post.setKucun(Request.getInt("kucun"));

        post.setCaipinxiangqing(util.DownloadRemoteImage.run(Request.get("caipinxiangqing")));

        post.setFaburen(Request.get("faburen"));


        
        post.setAddtime(Info.getDateStr()); // 设置添加时间
                service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        
        return showSuccess("保存成功" , Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
    * 更新内容
    * @return
    */
    @RequestMapping("/caipinxinxiupdate")
    public String update()
    {
        // 创建实体类
        Caipinxinxi post = new Caipinxinxi();
        // 将前台表单数据填充到实体类
        if(!Request.get("caipinbianhao").equals(""))
        post.setCaipinbianhao(Request.get("caipinbianhao"));
                if(!Request.get("caipinmingcheng").equals(""))
        post.setCaipinmingcheng(Request.get("caipinmingcheng"));
                if(!Request.get("fenlei").equals(""))
        post.setFenlei(Request.get("fenlei"));
                if(!Request.get("caipintupian").equals(""))
        post.setCaipintupian(Request.get("caipintupian"));
                if(!Request.get("pingfen").equals(""))
        post.setPingfen(Request.getDouble("pingfen"));
            if(!Request.get("jiage").equals(""))
        post.setJiage(Request.getDouble("jiage"));
            if(!Request.get("zhekoujia").equals(""))
        post.setZhekoujia(Request.getInt("zhekoujia"));
            if(!Request.get("xiaoliang").equals(""))
        post.setXiaoliang(Request.getInt("xiaoliang"));
            if(!Request.get("kucun").equals(""))
        post.setKucun(Request.getInt("kucun"));
            if(!Request.get("caipinxiangqing").equals(""))
        post.setCaipinxiangqing(util.DownloadRemoteImage.run(Request.get("caipinxiangqing")));
            if(!Request.get("faburen").equals(""))
        post.setFaburen(Request.get("faburen"));
        
        post.setId(Request.getInt("id"));
                service.update(post); // 更新数据
        int charuid = post.getId().intValue();
                        return showSuccess("保存成功" , Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }
    /**
     *  后台详情
     */
    @RequestMapping("/caipinxinxi_detail")
    public String detail()
    {
        int id = Request.getInt("id");
        Caipinxinxi map = service.find(id);  // 根据前台url 参数中的id获取行数据
        request.setAttribute("map" , map);  // 把数据写到前台
        return "caipinxinxi_detail";  // 详情页面：WebRoot\caipinxinxi_detail.jsp
    }
    /**
     *  前台详情
     */
    @RequestMapping("/caipinxinxidetail")
    public String detailweb()
    {
        int id = Request.getInt("id");
        Caipinxinxi map = service.find(id);
        
        request.setAttribute("map" , map);
        return "caipinxinxidetail";    // 前台详情页面：WebRoot\caipinxinxidetail.jsp
    }
        /**
    *  删除
    */
    @RequestMapping("/caipinxinxi_delete")
    public String delete()
    {
        if(!checkLogin()){
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap delMap = Query.make("caipinxinxi").find(id);

                service.delete(id);// 根据id 删除某行数据
                return showSuccess("删除成功",request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
