<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		$("#umemberLogin").on("click", function() {
			location.href = "/auth/umemberlogin";
		});

		$("#tmemberLogin").on("click", function() {
			location.href = "/auth/tmemberlogin";
		});

	});
</script>
<table>
	<tr>
		<td><input type='button' id='umemberLogin' value="일반회원으로 로그인하기" /></td>
		<td><input type='button' id='tmemberLogin' value="극단회원으로 로그인하기" /></td>
	</tr>
</table>