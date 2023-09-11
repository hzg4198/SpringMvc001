package com.cuit.springmvc.service;

import com.cuit.springmvc.pojo.Items;

import java.util.List;

public interface ItemService {
    List<Items> queryItemList();

    Items queryItemById(int id);

    void updateItemById(Items items);
}
