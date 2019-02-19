package com.imooc.dataObject.dao;

import com.imooc.dataObject.mapper.ProductCategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

/**
 * @author ww
 * @date 2019/2/15 17:37
 */
public class ProductCategoryDao {

    @Autowired
    private ProductCategoryMapper productCategoryMapper;

    public int insertByMapper(Map<String, Object> map){
        return productCategoryMapper.insertByMapper(map);
    }
}
