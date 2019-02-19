package com.imooc.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 * @author ww
 * @date 2019/1/12 12:43
 */
@Component
@ServerEndpoint("/webSocket")
@Slf4j
public class WebSocket {

    private Session session;

    private static CopyOnWriteArraySet<WebSocket> webSocketCopyOnWriteArraySet = new CopyOnWriteArraySet<>();

    @OnOpen
    public void onOpen(Session session){
        this.session = session;
        webSocketCopyOnWriteArraySet.add(this);
        log.info("【webSocket消息】 有新的连接，总数：{}", webSocketCopyOnWriteArraySet.size());
    }

    @OnClose
    public void onClose(){
        webSocketCopyOnWriteArraySet.remove(this);
        log.info("【webSocket消息】 连接断开，总数：{}", webSocketCopyOnWriteArraySet.size());
    }

    @OnMessage
    public void onMessage(String message){
        log.info("【webSocket消息】 收到客户端发来的消息{}", message);
    }

    public void sendMessage(String message){
        for (WebSocket webSocket: webSocketCopyOnWriteArraySet){
            log.info("【webSocket消息】 广播消息，message={}", message);
            try {
                webSocket.session.getBasicRemote().sendText(message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
