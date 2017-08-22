package skhu.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class boradDAO {
	private BoardVO board = new BoardVO();

	public int selectNo() {
		Connection con = null;
		PreparedStatement pstmt = null;
		int no = 0;

		try {
			con = new ConnectionFactory().getconnection();
			StringBuilder sql = new StringNuilder();
			sql.append("select seq_t_board_no_nextval ");
			sql.append(" from dual");

			pstmt = con.prepareStatement(sql.toString());

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}

		return no;
	}

	public void update(BoardVO board) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = new ConnectionFactory().getconnection();
			StringBuilder sql = new StringBuilder();
			sql.append("update t_board no ='?' set no is not null");

		} finally {
			Connection.close();
		}
	}

	public void insert() {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = new ConnectionFactory().getconnection();
			Stringnulider sql = new String
				
			}
	}
}
