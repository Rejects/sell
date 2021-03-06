package com.imooc.form;

import lombok.Data;

/**
 * Created by ww
 * 2018-12-23 21:43
 */
@Data
public class CategoryForm {

    private Integer categoryId;

    /** 类目名字. */
    private String categoryName;

    /** 类目编号. */
    private Integer categoryType;
}
