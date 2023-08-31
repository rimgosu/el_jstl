package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MessageDAO {

	
	

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt = 0;
	
	
	
	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@project-db-stu3.smhrd.com:1524:xe";
			String db_id = "Insa4_Spring_hacksim_5";
			String db_pw = "aishcool5";
			
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
			System.out.print("conn completed. ");
		} 
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 확인하세요"); // syse
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("DB연결에 필요한 정보가 맞는지 체크하세요!");
		}
	}
	
	// db 종료
	public void close() {
		try {
			
			
			if (rs!=null) {
				rs.close();
			}
			if (psmt!=null) {
				psmt.close();
			}
			if (conn!=null) {
				conn.close();
			}
			
			System.out.println("close completed.");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public int send(MessageDTO dto) {
		
		getConnection();
		
		try {
			String sql = "insert into message values(MSG_NUM.NEXTVAL,?,?,?,SYSDATE)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getSend_name());
			psmt.setString(2, dto.getReceive_email());
			psmt.setString(3, dto.getContent());
			
			cnt = psmt.executeUpdate();
			return cnt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return 0;
		
	}
	
	public ArrayList<MessageDTO> select(String email) {
		
		ArrayList<MessageDTO> list = new ArrayList<>();
		
		getConnection();
		
		
		try {
			String sql = "select * from message where receive_email=? order by send_date desc";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			while(rs.next()) {
				MessageDTO dto = new MessageDTO(rs.getInt("num"), rs.getString("send_name"), rs.getString("receive_email"), rs.getString("content"), rs.getString("send_date"));
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return list;
	}

	public void allDelete(String email) {
		// TODO Auto-generated method stub
		
		getConnection();
		
		
		try {
			String sql = "delete from message where receive_email = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
	}

	public void delete(int ch_num) {
		// TODO Auto-generated method stub
		
		getConnection();
		
		try {
			String sql = "delete from message where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, ch_num);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		
	}
	
	
}
