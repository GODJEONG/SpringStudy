package com.digi.work.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import com.digi.work.dto.BoardBean;
import com.digi.work.until.Constant;

public class BoardDAO {

	JdbcTemplate template;

	public BoardDAO() {
		this.template = Constant.template;
	}

	public int getListCount() {
		String sql = "select count(*) as cnt from board";
		int a = this.template.queryForObject(sql, Integer.class);
		System.out.println("게시판: " + a);
		return a;
	}

	public List<BoardBean> getBoardList(int page, int limit) {
		int startrow = (page - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		String board_list_sql = "select * from "
				+ "(select row_number() over() rnum,BOARD_NUM,BOARD_NAME,BOARD_SUBJECT,"
				+ "BOARD_CONTENT,BOARD_FILE,BOARD_RE_REF,BOARD_RE_LEV,"
				+ "BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE from "
				+ "(select * from board order by BOARD_RE_REF desc,BOARD_RE_SEQ asc) AS s)AS u " + "where rnum>="
				+ startrow + " and rnum<= " + endrow;

		return (List<BoardBean>) template.query(board_list_sql, new BeanPropertyRowMapper<BoardBean>(BoardBean.class));
	}

	public void setReadCountUpdate(final int num) {
		String sql = "UPDATE board SET BOARD_READCOUNT = BOARD_READCOUNT + 1 WHERE BOARD_NUM = ?";

		this.template.update(sql, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, num);
			}
		});
	}

	public BoardBean getDetail(int num) {
		String query = "select * from board where BOARD_NUM = " + num;
		System.out.println("getDetail: " + num);
		return template.queryForObject(query, new BeanPropertyRowMapper<BoardBean>(BoardBean.class));
	}

	public boolean boardInsert(final BoardBean board) {
		String sql = "select max(board_num) from board";
		String sql2 = "insert into board (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT,"
				+ "BOARD_CONTENT, BOARD_FILE, BOARD_RE_REF, BOARD_RE_LEV,BOARD_RE_SEQ,BOARD_READCOUNT,"
				+ "BOARD_DATE) values(?,?,?,?,?,?,?,?,?,?,now())";

		Integer maxNum = this.template.queryForObject(sql, Integer.class);
		int result = 0;
		final int num = (maxNum != null) ? maxNum + 1 : 1;

		System.out.println("num:" + num);

		Object[] params = new Object[] { num, board.getBOARD_NAME(), board.getBOARD_PASS(), board.getBOARD_SUBJECT(),
				board.getBOARD_CONTENT(), board.getBOARD_FILE(), num, 0, 0, 0 };

		System.out.println("params:" + Arrays.toString(params));

		result = this.template.update(sql2, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1, num);
				ps.setString(2, board.getBOARD_NAME());
				ps.setString(3, board.getBOARD_PASS());
				ps.setString(4, board.getBOARD_SUBJECT());
				ps.setString(5, board.getBOARD_CONTENT());
				ps.setString(6, board.getBOARD_FILE());
				ps.setInt(7, num);
				ps.setInt(8, 0);
				ps.setInt(9, 0);
				ps.setInt(10, 0);
			}
		});
		return result > 0;
	}

	public int boardReply(BoardBean board) {
		String board_max_sql = "SELECT MAX(board_num) FROM board";
		String sql = "";
		int num = 0;
		int result = 0;

		int re_ref = board.getBOARD_RE_REF();
		int re_lev = board.getBOARD_RE_LEV();
		int re_seq = board.getBOARD_RE_SEQ();

		try {

			Integer maxNum = template.queryForObject(board_max_sql, Integer.class);
			if (maxNum != null) {
				num = maxNum + 1;
			} else {
				num = 1;
			}

			sql = "UPDATE board SET BOARD_RE_SEQ = BOARD_RE_SEQ + 1 WHERE BOARD_RE_REF = ? AND BOARD_RE_SEQ > ?";
			result = template.update(sql, re_ref, re_seq);

			re_seq = re_seq + 1;
			re_lev = re_lev + 1;

			sql = "INSERT INTO board (BOARD_NUM, BOARD_NAME, BOARD_PASS, BOARD_SUBJECT, BOARD_CONTENT, BOARD_FILE, BOARD_RE_REF, BOARD_RE_LEV, BOARD_RE_SEQ, BOARD_READCOUNT, BOARD_DATE) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";

			result = template.update(sql, num, board.getBOARD_NAME(), board.getBOARD_PASS(), board.getBOARD_SUBJECT(),
					board.getBOARD_CONTENT(), "", re_ref, re_lev, re_seq, 0);

			return num;
		} catch (Exception ex) {
			System.out.println("boardReply: " + ex);
		}
		return 0;
	}
	

	public boolean isBoardWriter(int num, String pass) {
		String board_sql = "SELECT BOARD_PASS FROM board WHERE BOARD_NUM = ?";

		try {
			String dbPass = template.queryForObject(board_sql, new Object[] { num }, String.class);

			if (pass.equals(dbPass)) {
				return true;
			}
		} catch (Exception ex) {
			System.out.println("isBoardWriter: " + ex);
		}
		return false;
	}

	public boolean boardModify(BoardBean modifyboard) {
		String sql = "UPDATE board SET BOARD_SUBJECT=?, BOARD_CONTENT=? WHERE BOARD_NUM=?";

		try {
			int rowsAffected = template.update(sql, modifyboard.getBOARD_SUBJECT(), modifyboard.getBOARD_CONTENT(),
					modifyboard.getBOARD_NUM());

			return rowsAffected > 0;
		} catch (Exception ex) {
			System.out.println("boardModify: " + ex);
		}
		return false;
	}

    public boolean boardDelete(int num) {
        String sql = "DELETE FROM board WHERE BOARD_num = ?";
        int result = template.update(sql, num);
        return result > 0;
    }

	

//	public void exit() {
//		try {
//			con.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}

}
