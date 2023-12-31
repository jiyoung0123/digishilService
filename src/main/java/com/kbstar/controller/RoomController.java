package com.kbstar.controller;

import com.github.pagehelper.PageInfo;
import com.kbstar.dto.*;
import com.kbstar.service.ReserveService;
import com.kbstar.service.ReviewService;
import com.kbstar.service.RoomService;
import com.kbstar.service.SearchService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/room")
public class RoomController {
    @Autowired
    RoomService roomService;
    @Autowired
    ReviewService reviewService;
    @Autowired
    SearchService searchService;
    String dir ="room/";

    @RequestMapping("/list")
    public String list(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model, HttpServletRequest request, RoomSearch rs) throws Exception {
        log.info("-----------------------rs1"+rs);
        PageInfo<Room> p = null;
        String guestId = null;
        try {
            HttpSession session = request.getSession(false); // false를 전달하여 새로운 세션을 생성하지 않도록 설정
            if (session != null) {
                Guest loginGuest = (Guest) session.getAttribute("loginGuest");
                if (loginGuest != null) {
                    // 로그인 정보를 사용하여 원하는 작업 수행
                    guestId = loginGuest.getGuestId();
                    rs.setGuestId(guestId);
                    log.info("----------------------------------rs"+rs);
                }
            }
            if(rs.getRoomPriceFrom() != null){
                if(guestId != null){
                    log.info("----------도착--------"+rs);
                    p = new PageInfo<>(roomService.roomSearch2(pageNo, rs), 5); // 5:하단 네비게이션 개수
                    model.addAttribute("target","room");
                    model.addAttribute("roomList",p);
                    model.addAttribute("center",dir+"list");
                    return "index";
                }else{
                    p = new PageInfo<>(roomService.roomSearch(pageNo, rs), 5); // 5:하단 네비게이션 개수
                }
            }else {
                if(guestId != null){
                    p = new PageInfo<>(roomService.getPage2(pageNo, guestId), 5); // 5:하단 네비게이션 개수
                    model.addAttribute("target","room");
                    model.addAttribute("roomList",p);
                    model.addAttribute("center",dir+"list");
                    return "index";
                }else{
                    p = new PageInfo<>(roomService.getPage(pageNo), 5); // 5:하단 네비게이션 개수
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("target","room");
        model.addAttribute("roomList",p);
        model.addAttribute("center",dir+"list");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {
        Room room = null;
        room = roomService.get(id);

        List<Review> list = null;

        list = reviewService.getRoomReview(room.getRoomId());

        model.addAttribute("roomReviewList", list);
        model.addAttribute("roomDetail",room);
        model.addAttribute("center",dir+"detail");
        return "index";
    }

    @RequestMapping("/roomSearch")
    public String roomSearch(Model model,String roomName, RoomSearch rs, @RequestParam(required = false, defaultValue = "1") int pageNo, String guestId) throws Exception {
        //검색 시 인기 검색어 테이블에 추가하는 부분
        Search search = new Search(roomName);
        if(searchService.get(roomName)!=null){
            searchService.modify(search);
        }else{
            searchService.register(search);
        }
        // 검색 후 리스트 띄우는 부분
        PageInfo<Room> p = null;

        p = new PageInfo<>(roomService.roomSearch(pageNo, rs), 5);
        model.addAttribute("target","room");
        model.addAttribute("roomSearchList",p);
        model.addAttribute("rs",rs);
        model.addAttribute("center",dir+"list");
        return "index";
    }

    @RequestMapping("/searchList")
    public String searchList(Model model, String roomLoc) throws Exception {
        List<Room> list = null;
        list = roomService.getRoomLocList(roomLoc);
        model.addAttribute("roomLoc", roomLoc);
        model.addAttribute("roomLocList", list);
        model.addAttribute("center",dir+"searchList");
        log.info("---------------------------------------------------------"+list.toString());
        return "index";
    }

}
