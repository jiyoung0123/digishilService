package com.kbstar.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kbstar.dto.ChatRoomMap;
import com.kbstar.dto.RandomChatRoom;
import com.kbstar.mapper.RandomChatMapper;
import com.kbstar.service.randomChat.chatService.MsgChatService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.messaging.MessageHeaders;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.messaging.SessionConnectEvent;
import org.springframework.web.socket.messaging.SessionConnectedEvent;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Map;

@Slf4j
@RequiredArgsConstructor
@RestController
public class RandomChatImplController {

    @Autowired
    RandomChatMapper mapper;
    @Autowired
    MsgChatService msgChatService;

    @GetMapping("/pub/chat/userlist")
    @ResponseBody
    public ArrayList<String> userList(String roomId) throws Exception {
        log.info("/pub/chat/userlist도착");
        log.info(ChatRoomMap.getInstance().toString(),ChatRoomMap.getInstance().getChatRooms());


//        RandomChatRoom room = mapper.select(roomId);
//        log.info("/pub/chat/userlist여기서 ,room 확인해보쟈!={}",room);
        log.info("ChatRoomMap.getInstance().getChatRooms()확인하기!={}",ChatRoomMap.getInstance().getChatRooms());
        return msgChatService.getUserList(ChatRoomMap.getInstance().getChatRooms(),roomId );
    }
}
