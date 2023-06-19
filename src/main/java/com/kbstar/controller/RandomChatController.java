package com.kbstar.controller;

import com.kbstar.dto.RandomChatMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class RandomChatController {
    @Autowired
    SimpMessagingTemplate template;

    @MessageMapping("/randomReceiveall") // 모두에게 전송
    public void randomReceiveall(RandomChatMsg msg, SimpMessageHeaderAccessor headerAccessor) {
//        randomSend(target)라는 outbound로 msg를 보냄
        template.convertAndSend("/randomSend",msg);
    }
    }
