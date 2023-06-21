package com.kbstar.mapper;

import com.kbstar.dto.Search;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface SearchMapper extends KBMapper<String, Search> {

}
