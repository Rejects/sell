package com.imooc.utils;

import com.imooc.enums.CodeEnum;

/**
 * @Author: ww
 * @Date: 2018/12/10 14:32
 */
public class EnumUtil {

    public static <T extends CodeEnum>T getByCode(Integer code, Class<T> enumClass){
        for (T each: enumClass.getEnumConstants()){
            if (code.equals(each.getCode())){
                return each;
            }
        }
        return null;
    }
}
