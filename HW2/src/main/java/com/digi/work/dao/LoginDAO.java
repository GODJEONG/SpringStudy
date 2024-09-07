package com.digi.work.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import com.digi.work.dto.LoginBean;
import com.digi.work.until.Constant;

public class LoginDAO {

	JdbcTemplate template;

	public LoginDAO() {
		this.template = Constant.template;
	}

	public boolean memberInsert(final LoginBean bb) {

		String sql = "insert into shop_member values(?,?,?,?,?,?,?,?,?)";

		System.out.println("test1");

		int rowsAffected = this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement pstmt) throws SQLException {
				// TODO Auto-generated method stub

				String[] interArray = bb.getInter();
				String interString = Arrays.toString(interArray);
				interString = interString.substring(1, interString.length() - 1);

				String Birth = bb.getYear() + bb.getMonth() + bb.getDay();

				pstmt.setString(1, bb.getId());
				pstmt.setString(2, bb.getPw());
				pstmt.setString(3, bb.getEmail());
				pstmt.setString(4, bb.getName());
				pstmt.setString(5, Birth);
				pstmt.setString(6, bb.getSocialsecuritynumber());
				pstmt.setString(7, interString);
				pstmt.setString(8, bb.getIntro());
				pstmt.setString(9, "0");

				System.out.println("test2");
			}
		});
		return rowsAffected > 0; // insert 작업이 성공하면 true, 그렇지 않으면 false 반환

	}
	
    public boolean membercheck(String id, String pw) {
        String query = "SELECT COUNT(*) AS cnt FROM shop_member WHERE id = ? AND pw = ?";
        //int count = template.queryForObject(query, Integer.class, id, pw);
        int count = template.queryForObject(query, Integer.class, new Object[]{id, pw});
        return count > 0;
    }


	public LoginBean getInfo(String id) {
		String query = "select * from shop_member where id = " + id;
		return template.queryForObject(query, new BeanPropertyRowMapper<LoginBean>(LoginBean.class));
	}

	
	public List<LoginBean> memberall() {
		String query = "SELECT * FROM shop_member";
		return (ArrayList<LoginBean>) template.query(query, new BeanPropertyRowMapper<LoginBean>(LoginBean.class));
	}
	
	public LoginBean memberInfo(String id) {
		String query = "select * from shop_member where id = " + id;
		return template.queryForObject(query, new BeanPropertyRowMapper<LoginBean>(LoginBean.class));
	}

	
	public int memberDel(final String id) {
	    String query = "delete from shop_member where id=?";
	    return this.template.update(query, new PreparedStatementSetter() {
	        @Override
	        public void setValues(PreparedStatement ps) throws SQLException {
	            ps.setString(1, id);
	        }
	    });
	}
	

//	public void exit() {
//		try {
//			con.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}

	


}
