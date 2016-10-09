package dang.note.ssm.service;


import dang.note.ssm.pojo.Orders;
import dang.note.ssm.pojo.User;
import org.junit.Before;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;


public class TestOrdersService extends BasicTest{
    @Resource
    private OrdersService ordersService;
    @Before
    public void setUp(){
       // ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("spring-all.xml");
        //ordersService = (OrdersService) ac.getBean("ordersService");
    }
    @Test
    public void testList(){
        User user=new User();
        user.setId(1);
        System.out.println("ordersService"+ordersService);
        List<Orders> list = ordersService.list(user);
        for(Orders orders :list){
            System.out.println(orders);
        }
    }
}
