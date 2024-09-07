package com.digi.work.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.digi.work.dto.LoginBean;


public class LoginDAO { // 게시판 데이터베이스를 처리하는 클래스
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	// 생성자에서 커넥션 풀
	public LoginDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			con = ds.getConnection();
		} catch (Exception e) {
			System.out.println("DB 연결 실패: " + e);
			return;
		}
	}

	// 회원가입 데이터베이스 Insert
	public boolean memberInsert(LoginBean bb) {

		String sql = "insert into shop_member values(?,?,?,?,?,?,?,?,?)";
		int result = 0;

		System.out.println("test1");

		try {

			pstmt = con.prepareStatement(sql);

			System.out.println("test2");

			System.out.println("id: " + bb.getId());
			System.out.println("pw: " + bb.getPw());
			System.out.println("email: " + bb.getEmail());
			System.out.println("name: " + bb.getName());
			System.out.println("birth: " + bb.getYear() + bb.getMonth() + bb.getDay());
			System.out.println("ssn: " + bb.getSocialsecuritynumber());
			System.out.println("inter: " + bb.getInter());
			System.out.println("intro: " + bb.getIntro());
			System.out.println("admin: " + "0");

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

			System.out.println("test3");

			result = pstmt.executeUpdate();
			System.out.println("test4");

			if (result == 0) {
				return false;
			}
			return true;
		} catch (Exception ex) {
			System.out.println("회원가입 등록 실패: " + ex);

		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;
	}

	public boolean membercheck(String id, String pw) throws Exception {
		try {
			pstmt = con.prepareStatement("select count(*) as cnt from shop_member where id = ? and pw = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				pstmt.close();
				con.close();
				return true;

			} else {
				return false;
			}

		} catch (Exception ex) {
			System.out.println("getInfo: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;
	}

	public LoginBean getInfo(String id) throws Exception {
		LoginBean info = null;
		try {
			pstmt = con.prepareStatement("select * from shop_member where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				info = new LoginBean();

				info.setId(rs.getString("id"));
				info.setEmail(rs.getString("email"));
				info.setName(rs.getString("name"));
				info.setBirth(rs.getString("Birth"));
				info.setSocialsecuritynumber(rs.getString("socialsecuritynumber"));
				info.setInterstring(rs.getString("inter"));
				info.setIntro(rs.getString("intro"));
				info.setAdmin(rs.getString("admin"));
			}
			return info;
		} catch (Exception ex) {
			System.out.println("getInfo: " + ex);
			throw ex; // 예외를 호출한 쪽으로 전파
		} finally {
			// 리소스 정리
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {
					System.out.println("ResultSet close error: " + ex);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {
					System.out.println("PreparedStatement close error: " + ex);
				}
			}
		}
	}

	public List<LoginBean> memberall() throws Exception {

		List<LoginBean> memberList = new ArrayList<LoginBean>();
		try {
			pstmt = con.prepareStatement("SELECT * FROM shop_member");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				LoginBean info = new LoginBean();

				info.setId(rs.getString("id"));
				info.setEmail(rs.getString("email"));
				info.setName(rs.getString("name"));
				info.setBirth(rs.getString("Birth"));
				info.setSocialsecuritynumber(rs.getString("socialsecuritynumber"));
				info.setInterstring(rs.getString("inter"));
				info.setIntro(rs.getString("intro"));
				info.setAdmin(rs.getString("admin"));

				// 생성된 Bean을 리스트에 추가
				memberList.add(info);
			}
		} catch (Exception ex) {
			System.out.println("memberall: " + ex);
			throw ex; // 예외를 호출한 쪽으로 전파
		} finally {
			// 리소스 정리
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {
					System.out.println("ResultSet close error: " + ex);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {
					System.out.println("PreparedStatement close error: " + ex);
				}
			}
		}
		return memberList;
	}

	public LoginBean memberInfo(String id) throws Exception {
		LoginBean info = null;
		try {
			pstmt = con.prepareStatement("SELECT * FROM shop_member where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				info = new LoginBean();

				info.setId(rs.getString("id"));
				info.setEmail(rs.getString("email"));
				info.setName(rs.getString("name"));
				info.setBirth(rs.getString("Birth"));
				info.setSocialsecuritynumber(rs.getString("socialsecuritynumber"));
				info.setInterstring(rs.getString("inter"));
				info.setIntro(rs.getString("intro"));
				info.setAdmin(rs.getString("admin"));

			}
		} catch (Exception ex) {
			System.out.println("memberall: " + ex);
			throw ex; // 예외를 호출한 쪽으로 전파
		} finally {
			// 리소스 정리
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {
					System.out.println("ResultSet close error: " + ex);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {
					System.out.println("PreparedStatement close error: " + ex);
				}
			}
		}
		return info;
	}

	public int memberDel(String id) throws Exception {
		int rowsAffected = 0;
		try {
			pstmt = con.prepareStatement("delete from shop_member where id=?");
			pstmt.setString(1, id);

			rowsAffected = pstmt.executeUpdate();
			if (rowsAffected > 0) {
				System.out.println("삭제 완료");
			}

		} catch (Exception ex) {
			System.out.println("memberall: " + ex);
			throw ex; // 예외를 호출한 쪽으로 전파
		} finally {
			// 리소스 정리
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {
					System.out.println("ResultSet close error: " + ex);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {
					System.out.println("PreparedStatement close error: " + ex);
				}
			}
		}
		return rowsAffected;
	}

	public void exit() {
		try {
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
