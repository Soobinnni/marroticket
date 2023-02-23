<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	function chk() {
		var chkbox = document.getElementsByName('agree');
		var chk = false;
		for (var i = 0; i < chkbox.length; i++) {
			if (chkbox[i].checked) {
				chk = true;
			} else {
				chk = false;
			}
		}

		if (chk) {
			alert("이용약관에 모두 동의하셨습니다.")
			location.href = "/theater/tmemberJoinForm";
			return false;
		} else {
			alert("마로티켓 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.")
		}

	}

	function nochk() {
		alert("회원 가입을 취소합니다.");
		location.href = "/";
	}
</script>


<title>극단 회원가입 이용약관</title>
<form>
	<h2>극단 회원가입 이용약관</h2>
	<br>
	<hr>

	<br>
	<div class="text" align="center">
		<b>개인 정보 수집 및 이용 동의(필수)</b>
	</div>
	<br>

	<textarea rows="10" cols="120" readonly="readonly">
제1장 총칙
제 1조 (목적)
이 약관은 마로티켓이 운영하는 웹사이트에서 제공하는 온라인티켓예매 및 기타 서비스에 관한 마로티켓 및 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.

제 2조 (약관의 명시 및 개정)
1. 이 약관은 마로티켓이 화면에 게시하거나 기타의 방법으로 이용자에게 공지함으로써 효력을 발생합니다.

2. 마로티켓은 필요에 따라 이 약관을 개정할 수 있으며 변경된 약관은 1항과 같은 방법으로 공지함으로써 효력을 발생합니다.

3. 회원은 변경된 약관에 동의하지 않을 경우 서비스 이용을 중단하고 회원탈퇴를 요청할 수 있습니다.
	</textarea>

	<div>
		<p>
			<input type="checkbox" name="agree" id="agree_second"><label for="agree_second"><b>동의합니다.</label></b>
		</p>
	</div>

	<br>
	<br>
	<div class="text">
		<b>마로티켓 이용 약관 동의(필수)</b>
	</div>
	<br>

	<textarea rows="20" cols="120" readonly="readonly">
	제1장 총칙
제1조 (목적)
㈜ 마로티켓 (이하, ‘회사’)의 판매 회원이신 극단장님께 감사드립니다. 본 약관은 회사가 제공하는 마로티켓 서비스 및 이를 지원하기 위한 기타 서비스 (이하, ‘서비스’)에 대해 회사와 극단장님 사이의 권리와 의무를 규정하는 것을 목적으로 합니다. 본 약관은 극단장님께서 서비스를 이용하시는 데 필요한 사항을 담고 있기 때문에 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.

- ‘마로티켓 서비스’라 함은 회사가 제공하는 마로티켓를 이용하는 온라인 서비스를 의미하며, ‘이를 지원하기 위한 기타 서비스’는 극단장님께서 마로티켓 서비스를 원활히 이용하시기 위해 회사가 제공하는 고객 센터 등 전반적인 지원 서비스를 의미합니다.
제2조 (용어의 정의)
① 본 약관에서 이용하는 용어의 정의는 다음과 같습니다.

가. ‘회원’이라 함은 회사가 제공하는 서비스에 회원 가입을 한 분으로서, 계속적으로 회사가 제공하는 서비스를 이용할 수 있는 만 14세 이상의 개인이나 법인을 의미합니다.

- ‘일반회원’’이라 함은 상행위만을 목적으로 한 분으로서, 회사가 제공하는 서비스를 통해 상품 등을 구매하는 회원을 의미합니다.
- ‘극단장님’이라 함은 회사의 이용 약관에 동의하고, 서비스가 제공하는 판매 서비스를 이용하는 사업자인 회원을 의미합니다.
- ‘상품’이라 함은 극단에서 제공하는 연극의 티켓으로, 회사에서 이를 서비스로 제공합니다.
② 본 조 제1항에 정의되지 않은 본 약관 상의 용어의 정의는 상법 등 관련법령과 일반적인 상거래 관행을 따릅니다.

제3조 (약관의 명시, 효력 및 변경)
① 본 약관은 회사가 제공하는 서비스에 게시하거나 기타의 방법으로 공지하고, 본 약관에 동의한 극단장님 모두에게 그 효력이 발생합니다.
② 회사는 필요한 경우, 관련법령을 위배하지 않는 범위 내에서 본 약관을 변경할 수 있습니다. 회사가 본 약관을 변경하는 경우, 시행일 15일 전부터 극단장님께 변경 사항을 서비스 내에서 공지 또는 통지하는 것을 원칙으로 하며, 변경 사항이 부득이하게 극단장님께 불리한 내용일 경우에는 그 시행일 30일 전부터 극단장님께 서비스 내에서 공지 또는 통지하거나, 회원 가입 시 등록된 이메일 주소로 이메일을 발송하거나, 카카오톡 플러스친구를 통해 카카오톡 메시지를 보내거나, 서비스 내 푸시 메시지 전송 등 합리적으로 가능한 방법으로 공지 또는 통지합니다.
③ 회사는 본 조 제2항에 따라 공지 또는 통지를 하는 경우, 공지 또는 통지일로부터 개정 약관 시행일 7일 후까지 거부 의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지합니다. 이러한 고지에도 불구하고, 극단장님께서 별도의 의사 표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 극단장님께서 개정 약관에 동의하지 않을 경우, 극단장님은 제10조 제1항에 따라 이용 계약을 해지할 수 있습니다.
제4조 (약관 외 준칙)
본 약관에 규정되지 않은 사항에 대해서는 관련법령 또는 회사의 서비스 내에 게시되어 있는 회사가 정한 서비스 정책의 규정에 따릅니다. 또한 본 약관과 서비스 정책의 내용이 충돌할 경우에는 서비스 정책에 따릅니다. 극단장님께서는 서비스 내에 게시되어 있는 서비스 정책을 수시로 확인하여 주시기를 부탁드리며, 이는 극단장님의 권리이자 의무임을 말씀 드립니다.


제2장 마로티켓 극단 계정
제5조 (마로티켓 극단 계정)
①마로티켓 극단 계정이란 회원이 서비스를 이용하기 위해 필요한 로그인 계정을 의미합니다. 마로티켓 극단 계정은 회원이 약관에 동의하고, 마로티켓 극단 계정 생성을 위해 필요한 일정 정보를 입력하면, 회사가 입력된 일정 정보를 인증한 후 가입을 승낙하는 절차로 생성됩니다.
② ‘아이디 (ID)’란 회원의 식별과 서비스의 이용을 위해 회원이 설정하고, 회사가 승인하여 등록된 아이디 의미합니다.
③ 회사가 승인하여 등록된 문자와 숫자의 조합을 의미합니다.
④ ‘비밀번호’란 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위해 회원 스스로가 설정해 회사에 등록한 영문, 숫자, 특수기호 등의 조합을 의미합니다.
⑤ 극단장님은 계정 생성 후 1주 이내에 계정 활성화(승인)를 위해 연극 예술 관련업종의 상행위를 목적으로 판매하는 것이라는 점을 증명하는 방법으로 회사에 사업자등록증 등 사업자임을 증명할 수 있는 자료를 반드시 제출해야 합니다.


	</textarea>

	<div>
		<p>
			<input type="checkbox" name="agree" id="agree_first"><label for="agree_first"><b>동의합니다.</label></b>
		</p>
	</div>

	<div>
		<br><br>
		<p>
			<input type="button" value="메인 화면으로" onclick="nochk()" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="다음 " onclick="chk()" />
		</p>

	</div>

</form>

<style>
#login_box_total .container {
	width: 1120px;
	height : 100%;
	padding-bottom : 20px;
	margin-bottom : 150px;
	font-family: 'Nanum Gothic ', sans-serif;
}
input[type="button"] {
  display : inline-block;
  margin-bottom : 39px;
  margin-top : 39px;
  background-color: #ff6666;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type="button"]:nth-child(2) {
	width : 123.69px;
}

input[type="button"]:hover {
  background-color: #ff4d4d;
}

</style>
