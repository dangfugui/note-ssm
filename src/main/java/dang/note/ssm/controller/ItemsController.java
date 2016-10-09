package dang.note.ssm.controller;

import dang.note.ssm.pojo.Items;
import dang.note.ssm.pojo.User;
import dang.note.ssm.service.ItemsService;
import dang.note.ssm.service.OrdersService;
import dang.note.ssm.tool.MySessionKey;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by dangqihe on 2016/10/8.
 */
@Controller
@RequestMapping("/items")
public class ItemsController {
    @Resource
    private ItemsService itemsService;
    @Resource
    private OrdersService ordersService;

    @RequestMapping(value="/add.action", method = {RequestMethod.POST,RequestMethod.GET})
    public String add(Items items){
        System.out.println("name:"+items.getName());
        int result=itemsService.save(items);
        return "redirect:list.action";
        //redirect:转发    forward:重定向
    }
    @RequestMapping(value = "/list.action")
    public String list(String name,Model model){
        System.out.println(name);
        List<Items> list = itemsService.list(name);
        System.out.println("lsit"+list);
        model.addAttribute("list",list);
        return "list";
    }
    @RequestMapping("/delete")//@ResponseBody 把返回的对象转换层json   @RequestBody把json转换成对象
    public @ResponseBody int delete(int id){
        int res=itemsService.delete(id);
        System.out.println(res);
        return res;
    }

    @RequestMapping("/addToOrders")
    public String addToOrders(int id, HttpSession httpSession){
        User user= (User) httpSession.getAttribute(MySessionKey.LOGIN_USER);
        ordersService.addShopping(user,id);
        return "redirect:../orders/shopping.action";
    }
}
