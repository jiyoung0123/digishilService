package com.kbstar.controller;

import com.kbstar.dto.RandomChatRoom;
import com.kbstar.service.randomChat.RandomChatServiceMain;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
@Slf4j
public class RandomChatRoomController {

    // ChatRepository Bean 가져오기
    @Autowired
    private RandomChatServiceMain chatServiceMain;


    // 스프링 시큐리티의 로그인 유저 정보는 Security 세션의 PrincipalDetails 안에 담긴다
    // 정확히는 PrincipalDetails 안에 ChatUser 객체가 담기고, 이것을 가져오면 된다.


    // 채팅 리스트 화면
    // / 로 요청이 들어오면 전체 채팅룸 리스트를 담아서 return
    @GetMapping("/randomChatList")
    public String randomChatList(Model model, HttpSession session) throws Exception {
        if(session.getAttribute("loginGuest")==null){
            return "redirect:/login";
        }
        model.addAttribute("user","loginGuest");
        model.addAttribute("list", chatServiceMain.findAllRoom());

        log.info("----------------------------------------------------------");
        log.info(String.valueOf(chatServiceMain.findAllRoom()));
        log.debug("SHOW ALL ChatList {}", chatServiceMain.findAllRoom());
        model.addAttribute("center", "randomChatList");
        return "index";
    }


    // 채팅방 생성
    // 채팅방 생성 후 다시 / 로 return

    @PostMapping("/chat/createroom")
    public String createRoom(@RequestParam String roomName,
                             @RequestParam String createUserId,
                             @RequestParam("roomPwd") String roomPwd,
                             @RequestParam("secretChk") boolean secretChk,
                             @RequestParam(value = "maxUserCnt", defaultValue = "2") int maxUserCnt,
                             @RequestParam("chatType") RandomChatRoom.ChatType chatType,
                             RandomChatRoom randomChatRoom,
                             Model model,
                             RedirectAttributes rttr) throws Exception {
        log.info("==================================="+randomChatRoom);
        RandomChatRoom room;
//        room = chatServiceMain.createChatRoom(createUserId,roomName, roomPwd, secretChk, maxUserCnt, chatType);

        room = chatServiceMain.createChatRoom(createUserId, roomName, roomPwd, secretChk, maxUserCnt, chatType);

        chatServiceMain.register(room);

        log.info("CREATE Chat Room {}", room);
//        model.addAttribute("room",room);
        rttr.addFlashAttribute("roomName", room);
        return "redirect:/randomChatList";
    }

    // 채팅방 입장 화면
    // 파라미터로 넘어오는 roomId 를 확인후 해당 roomId 를 기준으로
    // 채팅방을 찾아서 클라이언트를 chatroom 으로 보낸다.
    @GetMapping("/chat/room")
    public String roomDetail(Model model, String roomId,HttpSession session) throws Exception {
        if(session.getAttribute("loginGuest")==null){
            return "redirect:/login";
        }
        model.addAttribute("user","loginGuest");
        log.info("roomId {}", roomId);
        RandomChatRoom room = chatServiceMain.findRoomById(roomId);
        model.addAttribute("room", room);
//        model.addAttribute("center","randomChatRoom1");
        return "randomChatRoom1";
    }

}