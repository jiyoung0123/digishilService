package com.kbstar.mapper;

import com.kbstar.dto.Board;
import com.kbstar.dto.Guest;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface BoardMapper extends KBMapper<Integer, Board> {

}
