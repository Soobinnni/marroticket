<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	$(document)
			.ready(
					function() {
						$("#tmemberFindPassword")
								.on(
										"click",
										function() {
											//json
											var tId = $("#tId");
											var tOwnerEmail = $("#tOwnerEmail");
											var tIdVal = tId.val();
											var tOwnerEmailVal = tOwnerEmail
													.val();

											//유효성 검사
											//아이디
											if (tIdVal.length > 15) {
												alert("아이디는 20자리까지 입력할 수 있습니다.");
												return;
											}
											if (tIdVal == null
													|| tIdVal.length == 0) {
												alert("아이디를 입력하세요");
												return;
											}
											//전화번호
											if (tOwnerEmailVal == null
													|| tOwnerEmailVal.length == 0) {
												alert("대표자 이메일을 입력하세요");
												return;
											}
											if (!tOwnerEmailVal
													.match(/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/)) {
												alert("이메일 양식이 올바르게 입력되지 않았습니다.");
												return;
											}

											var jsonObject = {
												tId : tIdVal,
												tOwnerEmail : tOwnerEmailVal
											};
											var jsonStg = JSON
													.stringify(jsonObject);
											console.log(jsonStg);

											//ajax
											$
													.ajax({
														type : "post",
														url : "/theater/findPassword",
														data : jsonStg,
														contentType : "application/json; charset=utf-8",
														success : function(
																result) {
															switch (result) {
															case 'fail':
																//입력한 극단 아이디와 이메일에 일치하는 비밀번호가 없을 때
																alert("아이디 찾기 실패 \n입력하신 정보와 일치하는 아이디가 없습니다.");
																break;
															case 'send':
																//입력한 극단 아이디와 이메일로 비밀번호 찾기를 성공했을 때. 임시 비밀번호 이메일 발송 사실을 alert.
																alert("임시비밀번호가 입력하신 이메일로 발송됐습니다!");
																break;
															}
														}
													});
										});
					});
</script>

<p>비밀번호 찾기</p>
<table>
	<tr>
		<td><label for="tId">아이디</label></td>
	</tr>
	<tr>
		<td><input type='text' name='tId' id='tId' /></td>
	</tr>
	<tr>
		<td><label for="tOwnerEmail">대표자 이메일</label></td>
	</tr>
	<tr>
		<td><input type='text' name='tOwnerEmail' id='tOwnerEmail' />
	</tr>
	<tr>
		<td align='right'><input type='button' id='tmemberFindPassword'
			value='찾기'></td>
	</tr>
</table>