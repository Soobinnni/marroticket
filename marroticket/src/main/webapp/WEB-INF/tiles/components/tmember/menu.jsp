<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.dropdown {
	display: inline-block;
	float: left;
	position: relative;
	display: inline-block;
	text-decoration: none;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 12px 16px;
	z-index: 1;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
<div align="left">

	<div class="dropdown">
		<a href="/theater/registePlay">연극 등록</a>
	</div>
	<div class="dropdown">
		<span> | 극단마이페이지 | </span>
		<div class="dropdown-content">
			<p>
				<a href="/theater/playRegisteInfo">등록한 연극</a>
			</p>
			<p>
				<a href="/theater/tmemberPayment">정산 내역</a>
			</p>
			<p>
				<a href="/theater/tmembermypage">극단 정보 관리</a>
			</p>
		</div>
	</div>
	<div class="dropdown">
		<span> 고객센터</span>
		<div class="dropdown-content">
			<p>
				<a href="/theater/noticeList">공지사항</a>
			</p>
			<p>
				<a href="/theater/tfaqList">자주 묻는 질문</a>
			</p>
		</div>
	</div>
</div>
<br>
<hr>