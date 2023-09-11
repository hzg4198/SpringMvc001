package com.cuit.springmvc.controller;

import com.cuit.springmvc.pojo.Items;
import com.cuit.springmvc.pojo.QueryVo;
import com.cuit.springmvc.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

@Controller
public class itemController {

    @Autowired
    ItemService itemService;

    @RequestMapping("itemList")
    public ModelAndView ItemList(){
        ModelAndView mav = new ModelAndView();
        List<Items> items = itemService.queryItemList();
        mav.addObject("itemList",items);
        mav.setViewName("itemList");
        return mav;
    }

    //    @RequestMapping("itemEdit")
//    public ModelAndView queryItemById(Integer itemId){
//        Items items = itemService.queryItemById(itemId);
//        ModelAndView mav = new ModelAndView();
//        mav.addObject("item",items);
//        mav.setViewName("itemEdit");
//        return mav;
//    }
    @RequestMapping("itemEdit")
    public String queryItemById(Integer id, Model model){
        Items items = itemService.queryItemById(id);
        model.addAttribute("item",items);
        return "itemEdit";
    }

    //将页面修改后的商品信息保存到数据中
    @RequestMapping("updateItem")
    @ResponseBody
    public String updateItem(/*@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")*/ Items items){
        System.out.println(items);
        itemService.updateItemById(items);
        return "success";
    }
    @RequestMapping("queryitem")
    @ResponseBody
    public String queryItem(QueryVo vo){
        System.out.println(vo.getItem().getId());
        System.out.println(vo.getItem().getName());
        return "success";
    }
    @RequestMapping("DeleteAllPidsServlet")
    @ResponseBody
    public String deleteAll(Integer[] ids,QueryVo vo){
        System.out.println(Arrays.toString(ids));
        System.out.println(vo.getIds());
        return "success";
    }

}
