package com.imooc.service;

import com.imooc.dto.OrderDTO;

/**
 * 消息推送
 * @author ww
 * @date 2019/1/5 17:29
 */
public interface PushMessageService {
    /**
     * 订单状态变更消息
     * @param orderDTO
     */
    void orderStatus(OrderDTO orderDTO);
}
