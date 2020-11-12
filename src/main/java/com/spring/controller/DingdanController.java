package com.spring.controller;

import com.spring.dao.DingdanMapper;
import com.spring.entity.Dingdan;
import com.spring.service.DingdanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;

import java.util.*;


/**
 * 订单
 */
@Controller
public class DingdanController extends BaseController {
    @Autowired
    private DingdanMapper dao;
    @Autowired
    private DingdanService service;

    /**
     * 后台列表页
     */
    @RequestMapping("/dingdan_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Dingdan.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if (sort.equals("desc")) {        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        } else {
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page);  // 取两个数的最大值，防止page 小于1
        List<Dingdan> list = service.selectPageExample(example, page, 12);   // 获取当前页的行数
        // 生成统计语句
        HashMap total = Query.make("dingdan").field("(sum(dingdanjine)) sum_dingdanjine").where(where).find();
        // 将统计语句写给界面调用
        request.setAttribute("total", total);
        // 将列表写给界面使用
        request.setAttribute("list", list);
        assign("orderby", order);  // 把当前排序结果写进前台
        assign("sort", sort);      // 把当前排序结果写进前台
        assign("where", where);    // 把当前条件写给前台
        return "dingdan_list";   // 使用视图文件：WebRoot\dingdan_list.jsp
    }

    public String getWhere() {
        String where = " ";
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
        if (!Request.get("dingdanbianhao").equals("")) {
            where += " AND dingdanbianhao LIKE '%" + Request.get("dingdanbianhao") + "%' ";
        }
        if (!Request.get("dingdanxinxi").equals("")) {
            where += " AND dingdanxinxi LIKE '%" + Request.get("dingdanxinxi") + "%' ";
        }
        return where;
    }

    /**
     * 店家列表
     */
    @RequestMapping("/dingdan_list_dianjia")
    public String listdianjia() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }
        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Dingdan.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：店家=当前登录用户
        String where = " dianjia='" + request.getSession().getAttribute("username") + "' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if (sort.equals("desc")) {        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        } else {
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Dingdan> list = service.selectPageExample(example, page, 12);
        HashMap total = Query.make("dingdan").field("(sum(dingdanjine)) sum_dingdanjine").where(where).find();
        request.setAttribute("total", total);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "dingdan_list_dianjia";
    }

    /**
     * 下单人列表
     */
    @RequestMapping("/dingdan_list_xiadanren")
    public String listxiadanren() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }
        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Dingdan.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：下单人=当前登录用户
        String where = " xiadanren='" + request.getSession().getAttribute("username") + "' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if (sort.equals("desc")) {        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        } else {
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Dingdan> list = service.selectPageExample(example, page, 12);
        HashMap total = Query.make("dingdan").field("(sum(dingdanjine)) sum_dingdanjine").where(where).find();
        request.setAttribute("total", total);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "dingdan_list_xiadanren";
    }


    @RequestMapping("/dingdan_add")
    public String add() {
        return "dingdan_add";
    }


    @RequestMapping("/dingdan_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Dingdan mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "dingdan_updt";
    }

    /**
     * 添加内容
     *
     * @return
     */
    @RequestMapping("/dingdaninsert")
    public String insert() {
        String tmp = "";
        Dingdan post = new Dingdan();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setDingdanbianhao(Request.get("dingdanbianhao"));

        post.setDingdanxinxi(Request.get("dingdanxinxi"));

        post.setDingdanjine(Request.getDouble("dingdanjine"));

        post.setYongcanren(Request.get("yongcanren"));

        post.setLianxidianhua(Request.get("lianxidianhua"));

        post.setYongcanshijian(Request.get("yongcanshijian"));

        post.setZhuangtai(Request.get("zhuangtai"));

        post.setBeizhu(Request.get("beizhu"));

        post.setDianjia(Request.get("dianjia"));

        post.setXiadanren(Request.get("xiadanren"));

        post.setIszf("否");


        post.setAddtime(Info.getDateStr()); // 设置添加时间
        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        Query.execute("INSERT INTO dingdan_dingdanxinxi(dingdanid,caipinxinxiid,caipinbianhao,caipinmingcheng,fenlei,caipintupian,zhekoujia,xiaoji,goumaishuliang) SELECT '" + charuid + "',caipinxinxiid,caipinbianhao,caipinmingcheng,fenlei,caipintupian,zhekoujia,xiaoji,goumaishuliang FROM gouwuche WHERE issh='否' AND goumairen='" + request.getSession().getAttribute("username") + "' AND faburen='" + request.getParameter("dianjia") + "'");

        Query.execute("DELETE FROM gouwuche WHERE issh='否' AND goumairen='" + request.getSession().getAttribute("username") + "' AND faburen='" + request.getParameter("dianjia") + "'");

        Query.execute("update dingdan set zhuangtai='待付款' where id='" + charuid + "'");

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     *
     *
     * 更新内容
     *
     * @return
     */
    @RequestMapping("/dingdanupdate")
    public String update() {
        // 创建实体类
        Dingdan post = new Dingdan();
        // 将前台表单数据填充到实体类
        if (!Request.get("dingdanbianhao").equals(""))
            post.setDingdanbianhao(Request.get("dingdanbianhao"));
        if (!Request.get("dingdanxinxi").equals(""))
            post.setDingdanxinxi(Request.get("dingdanxinxi"));
        if (!Request.get("dingdanjine").equals(""))
            post.setDingdanjine(Request.getDouble("dingdanjine"));
        if (!Request.get("yongcanren").equals(""))
            post.setYongcanren(Request.get("yongcanren"));
        if (!Request.get("lianxidianhua").equals(""))
            post.setLianxidianhua(Request.get("lianxidianhua"));
        if (!Request.get("yongcanshijian").equals(""))
            post.setYongcanshijian(Request.get("yongcanshijian"));
        if (!Request.get("zhuangtai").equals(""))
            post.setZhuangtai(Request.get("zhuangtai"));
        if (!Request.get("beizhu").equals(""))
            post.setBeizhu(Request.get("beizhu"));
        if (!Request.get("dianjia").equals(""))
            post.setDianjia(Request.get("dianjia"));
        if (!Request.get("xiadanren").equals(""))
            post.setXiadanren(Request.get("xiadanren"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     * 后台详情
     */
    @RequestMapping("/dingdan_detail")
    public String detail() {
        int id = Request.getInt("id");
        Dingdan map = service.find(id);  // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map);  // 把数据写到前台
        return "dingdan_detail";  // 详情页面：WebRoot\dingdan_detail.jsp
    }

    /**
     * 删除
     */
    @RequestMapping("/dingdan_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap delMap = Query.make("dingdan").find(id);

        service.delete(id);// 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
