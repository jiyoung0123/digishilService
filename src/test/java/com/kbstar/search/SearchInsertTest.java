package com.kbstar.search;

import com.kbstar.dto.Search;
import com.kbstar.service.SearchService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SearchInsertTest {
    @Autowired
    SearchService service;
    @Test
    void contextLoads() throws Exception {
        Search a = null;
        a = new Search("서울");
        service.register(a);
        service.get();
    }

}
