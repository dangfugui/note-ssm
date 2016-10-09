package dang.note.ssm.mapper;

import dang.note.ssm.pojo.Items;
import dang.note.ssm.pojo.User;

import java.util.List;

/**
 * Created by dangqihe on 2016/10/8.
 */
public interface ItemsMapper {
    int insert(Items items);
    List<Items> list(String name);
    int delete(int id);

}
