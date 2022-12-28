package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vo.Member;

public class MemberDao {
	
	// 로그인
	public Member loginMember(Connection conn, Member member) throws Exception {
		Member m = new Member();
		String sql = "SELECT member_id memberId, member_name memberName FROM member WHERE member_id =? AND member_pw =?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, member.getMemberId());
		stmt.setString(2, member.getMemberPw());
		ResultSet rs = stmt.executeQuery();
		
		if(rs.next()) {
			m.setMemberId(rs.getString("memberId"));
			m.setMemberName(rs.getString("memberName"));
		}
		
		return m;
	}
	
	// 회원가입
	public int addMember(Connection conn, Member member) throws Exception {
		int row = 0;
		String sql = "INSERT INTO member(member_id, member_pw, member_name, updatedate, createdate) VALUES(?, ?, ?, sysdate, sysdate)";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, member.getMemberId());
		stmt.setString(2, member.getMemberPw());
		stmt.setString(3, member.getMemberName());
		row = stmt.executeUpdate();
		return row;
	}
}
