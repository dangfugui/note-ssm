package dang.note.ssm.controller;

import dang.note.ssm.pojo.Orders;
import dang.note.ssm.pojo.User;
import dang.note.ssm.service.OrdersService;
import dang.note.ssm.tool.MySessionKey;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Resource
    private OrdersService ordersService;
    @RequestMapping("/list")
    public String list(Model model, HttpSession httpSession){
        User logInUser= (User) httpSession.getAttribute(MySessionKey.LOGIN_USER);
        List<Orders> list = ordersService.list(logInUser);
        model.addAttribute("list",list);
        return "list";
    }
    @RequestMapping("/shopping")//购物车
    public String shopping(Model model,HttpSession httpSession){
        User user= (User) httpSession.getAttribute(MySessionKey.LOGIN_USER);
        Orders orders=ordersService.shopping(user);
        model.addAttribute("orders",orders);
        return "shopping";
    }
    @RequestMapping("/deleteShopping")
    public @ResponseBody int deleteShopping(int itemsId,int orderId){
        int res=ordersService.deleteShopping(itemsId,orderId);
        return res;
    }
    @RequestMapping("/buy")
    public String buy(HttpSession httpSession){
        User user = (User) httpSession.getAttribute(MySessionKey.LOGIN_USER);
        ordersService.buy(user);
        return "redirect:list.action";
    }
}
