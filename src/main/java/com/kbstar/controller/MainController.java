package com.kbstar.controller;


import com.kbstar.dto.*;
import com.kbstar.service.GuestService;
import com.kbstar.service.ReserveService;
import com.kbstar.service.RoomService;
import com.kbstar.service.SearchService;
import com.kbstar.service.randomChat.PrincipalDetails;
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


    @RequestMapping("/marker")
    public String marker(Model model){
        model.addAttribute("center","marker");
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



}
