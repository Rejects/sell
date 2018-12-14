package com.imooc.service;

import com.imooc.dataobject.SellerInfo;

/**
 * 卖家端
 * @Author: ww
 * @Date: 2018/12/14 15:17
 */
public interface SellerService {

    /**
     * 通过openid查询
     * @param openid
     * @return
     */
    SellerInfo findSellerInfoByOpenid(String openid);
}
