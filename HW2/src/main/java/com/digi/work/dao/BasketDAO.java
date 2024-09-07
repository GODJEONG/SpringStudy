package com.digi.work.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.digi.work.dto.BasketBean;


public class BasketDAO { // �Խ��� �����ͺ��̽��� ó���ϴ� Ŭ����
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	// �����ڿ��� Ŀ�ؼ� Ǯ
	public BasketDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			con = ds.getConnection();
		} catch (Exception e) {
			System.out.println("DB ���� ����: " + e);
			return;
		}
	}

	public boolean OrderInsert(String id, String goods, int cnt) {

		String sql = "insert into order1(orderdate,id,food,food_cnt) values(now(),?,?,?)";
		int result = 0;

		System.out.println("test1");

		try {

			pstmt = con.prepareStatement(sql);

			System.out.println("test2");

			pstmt.setString(1, id);
			pstmt.setString(2, goods);
			pstmt.setInt(3, cnt);

			System.out.println("test3");

			result = pstmt.executeUpdate();
			System.out.println("test4");

			if (result == 0) {
				return false;
			}
			return true;
		} catch (Exception ex) {
			System.out.println("�ֹ� DB INSERT ����: " + ex);

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

	public List<BasketBean> OrderList(String id) {
		List<BasketBean> orderlist = new ArrayList<BasketBean>();
		try {
			pstmt = con.prepareStatement("SELECT * FROM order1 where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BasketBean order = new BasketBean();

				order.setOrder_no(rs.getInt("order_no"));
				order.setFood_cnt(rs.getInt("food_cnt"));
				order.setOrderdate(rs.getDate("orderdate"));
				order.setId(rs.getString("id"));
				order.setFood(rs.getString("food"));

				orderlist.add(order);
				System.out.println(order.getFood());
			}
		} catch (Exception ex) {
			System.out.println("orderlist: " + ex);
		} finally {
			// ���ҽ� ����
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
		return orderlist;
	}

	public void exit() {
		try {
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
