package com.digi.board.dao;

import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.digi.board.dto.BDto;
import com.digi.board.util.Constant;

public class BDao {

	JdbcTemplate template;

	public BDao() {
		this.template = Constant.template;
	}

	public ArrayList<BDto> list() {

		String query = "select * from mvc_board order by bGroup desc, bStep asc";
		return (ArrayList<BDto>) template.query(query, new BeanPropertyRowMapper<BDto>(BDto.class));

	}

}
