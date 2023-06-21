package com.kbstar.service;

import com.kbstar.dto.Search;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.SearchMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class SearchService implements KBService<String, Search> {
    /**
     * 등록 및 가입 진행
     * argument : Object
     * return: null
     *
     * @param search
     */
    @Autowired
    SearchMapper mapper;
    @Override
    public void register(Search search) throws Exception {
        mapper.insert(search);
    }


    @Override
    public void remove(String s) throws Exception {
        mapper.delete(s);
    }

    @Override
    public void modify(Search search) throws Exception {
        mapper.update(search);
    }


    @Override
    public Search get(String s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<Search> get() throws Exception {
        return mapper.selectall();
    }
}
