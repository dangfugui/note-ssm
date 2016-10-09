package dang.note.ssm.service;

import dang.note.ssm.mapper.ItemsMapper;
import dang.note.ssm.pojo.Items;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dangqihe on 2016/10/8.
 */
@Component
public class ItemsService {
    @Resource
    private ItemsMapper itemsMapper;
    public int save(Items items){
         return itemsMapper.insert(items);
    }
    public List<Items> list(String name){
        return itemsMapper.list(name);
    }

    public int delete(int id) {
        return itemsMapper.delete(id);
    }
}
