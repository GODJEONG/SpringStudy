package kr.co.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.PreparedStatementSetter;

import kr.co.bbs.dto.BDto;
import kr.co.bbs.util.Constant;

public class BDao {
	
	JdbcTemplate template;

	public BDao() {
		this.template = Constant.template;
	}

	public ArrayList<BDto> list() {

		String query = "select bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent "
				+ "from mvc_board order by bGroup desc, bStep asc";
		return (ArrayList<BDto>) template.query(query, new BeanPropertyRowMapper<BDto>(BDto.class));

	}

	private void upHit(final String bId) {
		// TODO Auto-generated method stub

		String query = "update mvc_board set bHit = bHit + 1 where bId = ?";
		this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1, Integer.parseInt(bId));
			}
		});

	}

	public BDto contentView(String strID) {
		// TODO Auto-generated method stub

		upHit(strID);

		String query = "select * from mvc_board where bId = " + strID;
		return template.queryForObject(query, new BeanPropertyRowMapper<BDto>(BDto.class));

	}

	public void write(final String bName, final String bTitle, final String bContent) {
		// TODO Auto-generated method stub

		this.template.update(new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {

				String sql = "SELECT IFNULL(MAX(bId)+1, 1) AS BID FROM mvc_board";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				int maxCount = 0;
				if (rs.next()) {
					maxCount = rs.getInt("BID");
				}

				String query = "insert into mvc_board (bId, bName, bTitle, bContent, bHit, bGroup, bStep, bIndent) values (?, ?, ?, ?, 0, ?, 0, 0 );";
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, maxCount);
				pstmt.setString(2, bName);
				pstmt.setString(3, bTitle);
				pstmt.setString(4, bContent);
				pstmt.setInt(5, maxCount);

				return pstmt;
			}
		});
	}

	public void modify(final String bId, final String bName, final String bTitle, final String bContent) {
		// TODO Auto-generated method stub

		String query = "update mvc_board set bName = ?, bTitle = ?, bContent = ? where bId = ?";

		this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, bName);
				ps.setString(2, bTitle);
				ps.setString(3, bContent);
				ps.setInt(4, Integer.parseInt(bId));
			}
		});
	}

	public BDto reply_view(String str) {
		// TODO Auto-generated method stub

		String query = "select * from mvc_board where bId = " + str;
		return template.queryForObject(query, new BeanPropertyRowMapper<BDto>(BDto.class));

	}

	public void reply(final String bId, final String bName, final String bTitle, final String bContent,
			final String bGroup, final String bStep, final String bIndent) {
		// TODO Auto-generated method stub

		replyShape(bGroup, bStep);

		String query = "insert into mvc_board (bName, bTitle, bContent, bGroup, bStep, bIndent) values (?, ?, ?, ?, ?, ?)";

		this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, bName);
				ps.setString(2, bTitle);
				ps.setString(3, bContent);
				ps.setInt(4, Integer.parseInt(bGroup));
				ps.setInt(5, Integer.parseInt(bStep) + 1);
				ps.setInt(6, Integer.parseInt(bIndent) + 1);
			}
		});

	}

	private void replyShape(final String strGroup, final String strStep) {
		// TODO Auto-generated method stub

		String query = "update mvc_board set bStep = bStep + 1 where bGroup = ? and bStep > ?";

		this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, strGroup);
				ps.setString(2, strStep);
			}
		});
	}

	public void delete(final String bId) {
		// TODO Auto-generated method stub
		String query = "delete from mvc_board where bId = ?";

		this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, bId);
			}
		});

	}

}
