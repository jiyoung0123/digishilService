package com.kbstar.search;

import com.kbstar.dto.RoomSearch;
import com.kbstar.dto.Search;
import com.kbstar.service.RoomService;
import com.kbstar.service.SearchService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class RoomSearch2 {
    @Autowired
    RoomService service;
    @Test
    void contextLoads() throws Exception {
        RoomSearch a = null;
        a = new RoomSearch("10000","100000",0);
        service.roomSearch(0,a);
    }

}