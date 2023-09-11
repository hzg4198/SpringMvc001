package com.cuit.springmvc.service.Impl;

import com.cuit.springmvc.mapper.ItemsMapper;
import com.cuit.springmvc.pojo.Items;
import com.cuit.springmvc.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    ItemsMapper itemsMapper;
    public List<Items> queryItemList() {
        return itemsMapper.selectByExample(null);
    }

    public Items queryItemById(int id) {
        return itemsMapper.selectByPrimaryKey(id);
    }

    public void updateItemById(Items items) {
        itemsMapper.updateByPrimaryKey(items);
    }
}
