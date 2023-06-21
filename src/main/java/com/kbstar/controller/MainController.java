package com.kbstar.controller;


import com.kbstar.dto.*;
import com.kbstar.service.GuestService;
import com.kbstar.service.ReserveService;
import com.kbstar.service.RoomService;
import com.kbstar.service.SearchService;
import com.kbstar.service.randomChat.PrincipalDetails;
import com.kbstar.service.randomChat.chatService.ChatServiceMain;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;


@Slf4j

@Controller
public class MainController {


    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());

    @Autowired
    SearchService searchService;
    @Autowired
    RoomService roomService;

    @RequestMapping("/")
    public String main(Model model) throws Exception {
        List<Search> search = null;
        search = searchService.get();
        Search first = search.get(0);
        log.info("1-----------------------------"+first);
        RoomSearch firstWord = new RoomSearch(first.getSearchWord(),"");
        log.info("2-----------------------------"+firstWord);
        List<Room> list = null;
        list = roomService.roomSearch(1, firstWord);
        log.info("3-----------------------------"+list);

        model.addAttribute("roomList",list);
        model.addAttribute("search",search);
        model.addAttribute("center","center");
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center","register");
        return "index";
    }



    @RequestMapping("/registerDetail")
    public String registerDetail(Model model){
        model.addAttribute("center","registerDetail");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center","login");
        return "index";
    }
    @RequestMapping("/logouts")
    public String logout(Model model, HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }

    @RequestMapping("/searchList")
    public String searchList(Model model){
        model.addAttribute("center", "searchList");
        return "index";
    }
    @RequestMapping("/websocket")
    public String websocket(Model model){
        model.addAttribute("center", "test/webSocketTest");
        return "index";
    }

    @RequestMapping("/randomChat")
    public String randomChat(Model model, HttpSession session){
        if(session.getAttribute("loginGuest")==null){
            return "redirect:/login";
        }
        model.addAttribute("center", "randomChat");
        return "index";
    }

//    @RequestMapping("/randomChatRoom")
//    public String randomChatRoom(Model model, HttpSession session){
//        if(session.getAttribute("loginGuest")==null){
//            return "redirect:/login";
//        }
//        model.addAttribute("center", "randomChatRoom");
//        return "index";
//    }

    // 채팅 리스트 화면
    // / 로 요청이 들어오면 전체 채팅룸 리스트를 담아서 return

    // 스프링 시큐리티의 로그인 유저 정보는 Security 세션의 PrincipalDetails 안에 담긴다
    // 정확히는 PrincipalDetails 안에 ChatUser 객체가 담기고, 이것을 가져오면 된다.
    public MainController(ChatServiceMain chatServiceMain) {
        this.chatServiceMain = chatServiceMain;
    }

    private final ChatServiceMain chatServiceMain;
    @GetMapping("/randomChatList")
    public String randomChatList(Model model, HttpSession session, @AuthenticationPrincipal PrincipalDetails principalDetails){
        if(session.getAttribute("loginGuest")==null){
            return "redirect:/login";
        }
        model.addAttribute("center", "randomChatList");
        model.addAttribute("user","loginGuest");

        model.addAttribute("list", chatServiceMain.findAllRoom());

        log.info("----------------------------------------------------------");
        log.info(String.valueOf(chatServiceMain.findAllRoom()));
//        // principalDetails 가 null 이 아니라면 로그인 된 상태!!
//        if (principalDetails != null) {
//            // 세션에서 로그인 유저 정보를 가져옴
//            model.addAttribute("user", principalDetails.getUser());
//            log.debug("user [{}] ",principalDetails);
//        }

//        model.addAttribute("user", "hey");
        log.debug("SHOW ALL ChatList {}", chatServiceMain.findAllRoom());
        return "index";
    }
}
