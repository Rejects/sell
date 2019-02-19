package com.imooc.dataObject;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by ww
 * 2018-12-23 23:02
 */
@Data
@Entity
public class SellerInfo {

    @Id
    @Column(name = "id")
    private String sellerId;

    private String username;

    private String password;

    private String openid;
}
