package com.member.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.member.domain.Member;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository
public class MemberDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int insertMember(Member member) {
		String query = "insert into  member VALUES (member_seq.nextval, ? , ? ,? )";
		int count = jdbcTemplate.update(query,member.getId(),member.getPw(),member.getName());
		return count;
	}

	public List<Member> memberList() {
		String query = "select * from member";
		List<Member> memberList = jdbcTemplate.query(query,new RowMapper<Member>() {

			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setNo(rs.getInt("no"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				return member;
			}});
		return memberList;
	}

	public int updateMember(Member m) {
		String query = "UPDATE member set name= ?  where id= ? ";
		int count = jdbcTemplate.update(query,m.getName(),m.getId());
		return count;
	}

}
