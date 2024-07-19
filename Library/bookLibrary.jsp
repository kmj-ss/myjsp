<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Library</title>
<link rel="stylesheet" type="text/css" href="/exweb/css/bookCss.css">
</head>
<body>
	<%@ include file="bookHeader.jsp"%>
	<section>
		<article>
			<fieldset>
				<legend>도서 추가</legend>
				<form name="fmAdd" action="bookAdd.jsp">
					<table>
						<tr>
							<th>제목</th>
							<td><input type="text" name="bname"></td>
						</tr>
						<tr>
							<th>작가</th>
							<td><input type="text" name="writer"></td>
						</tr>
						<tr>
							<th>장르</th>
							<td><input type="text" name="genre"></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" name="price"></td>
						</tr>
						<tr>
							<td colspan="2" class="addbtn"><input type="submit"
								value="제출" class="addbtn2"></td>
						</tr>
					</table>
				</form>
			</fieldset>
		</article>
		<article>
			<fieldset>
				<legend>전체 도서 조회</legend>
				<form name="fmInfo" action="bookList.jsp" id="fmInfo">
					<a href="/exweb/Library/bookList.jsp">책 조회하기</a>
				</form>
			</fieldset>
		</article>
		<article>
			<fieldset>
				<legend>도서 신청하기</legend>
				<form name="fmBuy">
					<table>
						<tr>
							<th>제목</th>
							<td><input type="text" name="bname"></td>
						</tr>
						<tr>
							<th>작가</th>
							<td><input type="text" name="writer"></td>
						</tr>
						<tr>
							<th>장르</th>
							<td><input type="text" name="genre"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" value="신청하기" class="addbtn2"></td>
						</tr>
					</table>
				</form>
			</fieldset>
		</article>
	</section>
	<footer></footer>
</body>
</html>