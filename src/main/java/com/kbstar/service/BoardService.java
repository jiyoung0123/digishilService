package com.kbstar.service;

import com.kbstar.dto.Board;
import com.kbstar.dto.Guest;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.BoardMapper;
import com.kbstar.mapper.GuestMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@Component
public class BoardService implements KBService<Integer, Board> {

    @Autowired
    BoardMapper mapper;

    @Override
    public void register(Board board) throws Exception {
        mapper.insert(board);
    }

    @Override
    public void remove(Integer i) throws Exception {
        mapper.delete(i);
    }

    @Override
    public void modify(Board board) throws Exception {
        mapper.update(board);
    }

    @Override
    public Board get(Integer i) throws Exception {
        return mapper.select(i);
    }

    @Override
    public List<Board> get() throws Exception {
        return mapper.selectall();
    }


}
