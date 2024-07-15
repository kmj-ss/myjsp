<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Library</title>
<link rel="stylesheet" type="text/css" href="css/bookCss.css">
</head>
<body>
	<%@ include file="bookHeader.jsp" %>
	<section>
		<article>
			<fieldset>
				<legend>도서 검색</legend>
				<form name="fmSearch" action="bookSearch.jsp">
					<table>
						<tr>
							<th><label>검색</label></th>
							<td><select name="sort">
									<option value="bnum">도서번호</option>
									<option value="name">제목</option>
									<option value="writer">작가</option>
									<option value="genre">장르</option>
							</select></td>
							<td><input type="text" name="info"></td>
							<td><input type="submit" value="검색"></td>
						</tr>
					</table>
				</form>
			</fieldset>
		</article>
		<article>
			<fieldset>
				<legend>도서 추가</legend>
				<form name="fmAdd" action="bookAdd.jsp">
					<table>
						<tr>
							<th>번호</th>
							<td><input type="text" name="bnum"></td>
							<th>제목</th>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<th>작가</th>
							<td><input type="text" name="writer"></td>
							<th>가격</th>
							<td><input type="text" name="price"></td>
						</tr>
						<tr>
							<th>장르</th>
							<td><input type="text" name="genre"></td>
							<td colspan="2" class="addbtn"><input type="submit" value="제출" class="addbtn2"></td>
						</tr>
					</table>
				</form>
			</fieldset>
		</article>
		<article>
			<fieldset>
				<legend>전체 도서 조회</legend>
				<form name="fmInfo" action="bookList.jsp" id="fmInfo">
					<a href="bookList.jsp">책 조회하기</a>
				</form>
			</fieldset>
		</article>
	</section>
	<footer></footer>
</body>
</html>