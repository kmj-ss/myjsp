<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Search</title>
<link rel="stylesheet" type="text/css" href="../css/bookCss.css">
<!-- <style>
table {
	border: 3px double #B6B1FF;
	width: 600px;
	padding: 5px 0px;
	border-radius: 5px;
	margin: 0px auto 20px auto;
}

th {
	width: 100px;
	border: 1px solid #7B63FF;
	border-radius: 5px;
	background: #7B63FF;
	color: white;
}

td {
	width: 120px;
}
</style> -->
</head>
<body><%@ include file="bookHeader.jsp"%><section>
		<article>
			<fieldset>
				<legend>도서 검색</legend>
				<form name="fmSearch" action="bookSearch.jsp">
					<table>
						<tr>
							<th><label>검색</label></th>
							<td><select name="sort">
									<option value="bnum">도서번호</option>
									<option value="bname">제목</option>
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
	</section>
</body>
</html>