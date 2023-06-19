package com.kbstar.board;


import com.kbstar.dto.Board;
import com.kbstar.dto.Guest;
import com.kbstar.service.BoardService;
import com.kbstar.service.GuestService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

import java.util.Date;

@Slf4j
@SpringBootTest
class BoardInsertTest {
    @Autowired
    BoardService boardService;

    @Test
    void contextLoads() throws Exception {
        Board obj = new Board(0, "a@a.com", "title1", "contents1", new Date());
        try {
            boardService.register(obj);
            log.info("--------------------------------------등록정상");
        } catch (Exception e) {
            log.info("--------------------------------------등록에러..");

        }

    }}
