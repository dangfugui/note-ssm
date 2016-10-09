package dang.note.ssm.service;

import dang.note.ssm.mapper.OrdersMapper;
import dang.note.ssm.pojo.Orders;
import dang.note.ssm.pojo.User;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by dangqihe on 2016/10/9.
 */
@Component("ordersService")
public class OrdersService {
    @Resource
    private OrdersMapper ordersMapper;
    public List<Orders> list(User user){
        return ordersMapper.list(user);
    }

    public Orders shopping(User user) {
        List<Orders> list = ordersMapper.list(user);
        List<Orders> nullList = ordersMapper.getShoppingOrders(user);
        if(nullList==null||nullList.size()==0){//没有创建订单  没有购物车
            Orders orders=new Orders();
            orders.setUserId(user.getId());
            orders.setNote("自动创建");
            System.out.println("///////////////////////////////////"+orders.getUserId());
            int id=ordersMapper.insert(orders);
            orders.setId(id);
            return orders;
        }else{
            if (list!=null&&list.size()!=0) {
                return list.get(0);
            }else {
                return nullList.get(0);
            }
        }

    }

    public void addShopping(User user, int id) {

        Map<String,Integer> map=new HashMap();
        Orders orders =ordersMapper.getShoppingOrders(user).get(0);//购物车订单
        map.put("ordersId",orders.getId());
        map.put("itemsId",id);
        int res=ordersMapper.addShopping(map);

    }




    public int deleteShopping(int itemsId, int orderId) {
        Map<String,Integer> map=new HashMap<String, Integer>();
        map.put("itemsId",itemsId);
        map.put("orderId",orderId);
        return ordersMapper.deleteShopping(map);
    }

    public void buy(User user) {
        Orders orders=new Orders();
        orders.setNote("旧订单提交  创建新订单");
        orders.setUserId(user.getId());
        System.out.println("///////////////////////////////////"+orders.getUserId());
        ordersMapper.insert(orders);
    }
}
