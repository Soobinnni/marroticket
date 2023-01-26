package com.marroticket.umember.member.controller;

import com.marroticket.common.email.service.EmailService;
import com.marroticket.common.email.vo.EmailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.marroticket.umember.member.domain.UmemberVO;
import com.marroticket.umember.member.service.UmemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/umember")
@Slf4j
public class UmemberController {
	@Autowired
	private UmemberService umemberService;
	@Autowired
	private EmailService emailService;

// 아이디 찾기
	@PostMapping("/findId")
	public ResponseEntity<String> findId(@RequestBody UmemberVO umember)
			throws Exception {

		// 값이 정상적으로 입력됐을 때
		String uId = umemberService.findId(umember);

		// 응답
		if (uId != null && uId.length() > 0) {
			return new ResponseEntity<String>(uId, HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("fail", HttpStatus.OK);
		}
	}
	// 비밀번호 찾기
	@PostMapping("/findPassword")
	public ResponseEntity<String> findPassword(@RequestBody UmemberVO umember, EmailVO email)
			throws Exception {
		// 값이 정상적으로 입력됐을 때
		String upassword = umemberService.findPassword(umember);

		// 응답
		if (upassword != null && upassword.length() > 0) {
			//이메일 보내기
			String content ="귀하의 비밀번호는 '"+upassword+"' 입니다.";
			String title ="마로티켓입니다. 비밀번호를 확인해주세요";
			email.setAddress(umember.getuEmail());
			email.setContent(content);
			email.setTitle(title);
			emailService.sendSimpleMessage(email);
			//return
			return new ResponseEntity<String>("send", HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("fail", HttpStatus.OK);
		}
	}

	// 마이페이지
	/* 1) 일반 회원 정보 */
	@GetMapping("/umembermypage")
	public String umemberInfo() {
		return "mypage.umemberInfo"; // 일반 회원의 마이페이지 default 페이지
	}

	/* 2) 일반회원 예매 정보 */
	@GetMapping("/umemberReserveInfo")
	public String umemberReserveInfo() {
		return "mypage.umemberReserveInfo";
	}

	/* 3) 일반 회원 예매 취소 정보 */
	@GetMapping("/umemberCancelInfo")
	public String umemberCancelInfo() {
		return "mypage.umemberCancelInfo";
	}

	// 일반회원 가입 이용약관
	@GetMapping("/umemberAgreement")
	public String umemberAgreement() {
		System.out.println("umemberAgreement 호출 완료");
		return "uMemberJoin.umemberAgreement";
	}

	// 일반 회원가입 페이지
	@GetMapping("/umemberJoinForm")
	public String umemberJoinForm() {
		System.out.println("umemberJoinForm 호출 완료");
		return "uMemberJoin.umemberJoinForm";
	}

	// 일반 사용자 아이디 중복 체크

	// 스프링 시큐리티의 비밀번호 암호처리기
//			@Autowired
//			private PasswordEncoder passwordEncoder;

}
