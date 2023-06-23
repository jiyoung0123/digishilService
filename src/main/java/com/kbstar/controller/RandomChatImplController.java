package com.kbstar.controller;

import com.kbstar.dto.RandomChatRoom;
import com.kbstar.mapper.RandomChatMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@Slf4j
@RequiredArgsConstructor
@RestController
public class RandomChatImplController {

    @Autowired
    RandomChatMapper mapper;


    @RequestMapping("/pub/chat/userlist")
    @ResponseBody
    public Map<String, String> userList(String roomId, SimpMessageHeaderAccessor headerAccessor) throws Exception {
        log.info("/chat/userlist도착---------------------------------------");
        log.info("/chat/userlist도착--roomId 확인하기={}",roomId);

        String userUUID = (String) headerAccessor.getSessionAttributes().get("userUUID");
        log.info("userUUID: " + userUUID);

//         roomId 가져오기
        roomId = (String) headerAccessor.getSessionAttributes().get("roomId");
        log.info("roomId: " + roomId);

        RandomChatRoom room = mapper.select(roomId);
        Map<String, String> userList = room.getUserList();

        log.info("/pub/chat/userlist여기서 ,room 확인해보쟈!={}",room);
        return userList;
    }
}
