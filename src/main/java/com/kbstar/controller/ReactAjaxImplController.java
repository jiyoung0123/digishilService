package com.kbstar.controller;

import com.kbstar.dto.Board;
import com.kbstar.dto.Guest;
import com.kbstar.service.BoardService;
import com.kbstar.service.GuestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@Slf4j
// 일반적인 컨트롤러는 화면jsp파일을 return 해 주니, ajax 요청은 이걸 이용하자-@RestController
@RestController
@RequestMapping("/react")
@CrossOrigin(origins = "http://localhost:3000")
public class ReactAjaxImplController {

    @Autowired
    BoardService boardService;
    @Autowired
    GuestService guestService;

    @RequestMapping("/boardAll")
    public List<Board> getall() throws Exception {
        List<Board> boardList;
        boardList = boardService.get();
        return boardList;
    }

    @RequestMapping("/myPoint")
    public Integer selectGuestCoupon(@RequestParam("guestId") String guestId) throws Exception {
        Integer result;
        result = guestService.selectGuestCoupon(guestId);
        return result;
    }

    @RequestMapping("/updatePoint")
    public void updateGuestCoupon(@RequestParam("guestId") String guestId,
                                  @RequestParam("guestCoupon") int guestCoupon) throws Exception {
        Guest guest = new Guest(guestId, guestCoupon);
        guestService.updateGuestCoupon(guest);
    }




}