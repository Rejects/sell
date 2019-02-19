package com.imooc.repository;

import com.imooc.dataObject.SellerInfo;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ww
 * 2018-12-23 23:04
 */
public interface SellerInfoRepository extends JpaRepository<SellerInfo, String> {
    SellerInfo findByOpenid(String openid);
}
