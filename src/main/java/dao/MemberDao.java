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
	
	// 개인정보 수정
	public int modifyMember(Connection conn, Member member) throws Exception {
		int row = 0;
		String sql = "UPDATE member SET member_name =? WHERE member_id=? AND member_pw =?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, member.getMemberName());
		stmt.setString(2, member.getMemberId());
		stmt.setString(3, member.getMemberPw());
		row = stmt.executeUpdate();
		return row;
	}
	
	// 비밀번호 수정
	public int modifyPwMember(Connection conn, String memberId, String memberPw, String newMemberPw) throws Exception {
		int row = 0;
		String sql = "UPDATE member SET member_pw =? WHERE member_id=? AND member_pw=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, newMemberPw);
		stmt.setString(2, memberId);
		stmt.setString(3, memberPw);
		row = stmt.executeUpdate();
		return row;
	}
	
	// 회원 탈퇴
	public int removeMember(Connection conn, Member member) throws Exception {
		int row = 0;
		String sql = "DELETE FROM member WHERE member_id =? AND member_pw =?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, member.getMemberId());
		stmt.setString(2, member.getMemberPw());
		row = stmt.executeUpdate();
		return row;
	}
}
