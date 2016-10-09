package dang.note.ssm.mapper;

import dang.note.ssm.pojo.Items;
import dang.note.ssm.pojo.Orders;
import dang.note.ssm.pojo.User;

import java.util.List;
import java.util.Map;


/**
 * Created by dangqihe on 2016/10/9.
 */

public interface OrdersMapper {
    int insert(Orders orders);
    List<Orders> list(User user);

    int addShopping(Map<String, Integer> map);

    int deleteShopping(Map map);

    List<Orders> getShoppingOrders(User user);//得到购物车订单
}
