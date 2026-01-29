package com.member.service;

import java.util.List;

import com.member.domain.Member;

public interface MemberService {

	public int insertMember(Member member) throws Exception;

	public List<Member> memberList()throws Exception;

	public int updateMember(Member m)throws Exception;

}
