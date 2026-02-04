package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.domain.Member;
import com.member.service.MemberService;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;


	@GetMapping("/insertForm")
	public String getMethodName() {
		return "member/insertForm";
	}

	@PostMapping("/insert")
	public String postMethodName(Member member, Model model) {
		log.info("insert member=" + member.toString());
		try {
			int count = memberService.insertMember(member);
			if (count > 0) {
				model.addAttribute("message", "%s님 회원가입성공축하".formatted(member.getName()));
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","회원가입 실패");
		return "member/failed";
	}
	//2. 회원전체리스트
	@GetMapping("/memberList")
	public String memberList(Model model) {
		log.info("memberList");
		List<Member> memberList;
		try {
			memberList = memberService.memberList();
			model.addAttribute("memberList", memberList);
			log.info(memberList.get(0).getName());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/memberList";
	}
	@GetMapping("/updateForm")
	public String memberUpdateForm() {
		return "member/updateForm";
	}
	
	@PostMapping("/update")
	public String memberUpdate(Member m, Model model) {
		log.info("memberUpdateForm member="+m.toString());
		int count;
		try {
			count = memberService.updateMember(m);
			if (count>0) {
				model.addAttribute("message","%s님의 이름바꾸기성공".formatted(m.getName()));
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","%s님의 이름바꾸기실패".formatted(m.getName()));
		return "member/failed";
	}
	

}
