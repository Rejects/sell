package com.imooc.service;

import com.imooc.dataObject.ProductCategory;

import java.util.List;

/**
 * 类目
 * Created by ww
 * 2018-10-09 10:12
 */
public interface CategoryService {

    ProductCategory findOne(Integer categoryId);

    List<ProductCategory> findAll();

    List<ProductCategory> findByCategoryTypeIn(List<Integer> categoryTypeList);

    ProductCategory save(ProductCategory productCategory);
}
