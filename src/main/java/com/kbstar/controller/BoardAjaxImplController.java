package com.kbstar.controller;

import com.kbstar.dto.Board;
import com.kbstar.dto.Reserve;
import com.kbstar.service.BoardService;
import com.kbstar.service.GuestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@Slf4j
// 일반적인 컨트롤러는 화면jsp파일을 return 해 주니, ajax 요청은 이걸 이용하자-@RestController
@RestController
@RequestMapping("/react")
@CrossOrigin(origins = "http://localhost:3000")
public class BoardAjaxImplController {

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

    @RequestMapping("/mypoint")
    public List<Board> getMyPoint() throws Exception {
        List<Board> boardList;
        boardList = boardService.get();
        return boardList;
    }




}