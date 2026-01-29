package com.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.dao.MemberDAO;
import com.member.domain.Member;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public int insertMember(Member member) throws Exception{
		int count = memberDAO.insertMember(member);
		return count;
	}

	@Override
	public List<Member> memberList() throws Exception{
		List<Member> memberList = memberDAO.memberList();
		return memberList;
	}

	@Override
	public int updateMember(Member m) throws Exception {
		int count = memberDAO.updateMember(m);
		return count;
	}

	

}
