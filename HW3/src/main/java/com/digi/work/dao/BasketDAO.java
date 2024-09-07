package com.digi.work.dao;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.digi.work.dto.BasketBean;
import com.digi.work.until.Constant;

public class BasketDAO {

	JdbcTemplate template;

	public BasketDAO() {
		this.template = Constant.template;
	}

	public boolean OrderInsert(String id, String goods, int cnt) {
		String sql = "INSERT INTO order1 (orderdate, id, food, food_cnt) VALUES (?, ?, ?, ?)";

		try {
			
	        LocalDateTime currentTime = LocalDateTime.now();
	        Timestamp currentTimestamp = Timestamp.valueOf(currentTime);
			
			int result = this.template.update(sql, currentTimestamp, id, goods, cnt);

			if (result > 0) {
				return true;
			}
		} catch (Exception ex) {
			System.out.println("주문 DB INSERT 오류: " + ex);
		}
		return false;
	}

	public List<BasketBean> OrderList(String id) {
		String board_list_sql = "SELECT * FROM order1 WHERE id = ?";

		return (List<BasketBean>) template.query(board_list_sql, new BeanPropertyRowMapper<BasketBean>(BasketBean.class),id);
	}
		
}
