<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<header>
		<h1>title</h1>
	</header>
	<section>
		<article>
			<form name="fmSearch" action="bookSearch.jsp">
				<label>검색</label> <select name="sort">
					<option value="bnum">도서번호</option>
					<option value="name">제목</option>
					<option value="writer">작가</option>
					<option value="genre">장르</option>
				</select> <input type="text" name="info"> <input type="submit"
					value="검색">
			</form>
		</article>
		<article>
			<form name="fmAdd" action="bookAdd.jsp">
				<input type="text" name="bnum">번호 <input type="text"
					name="name">제목 <input type="text" name="writer">작가
				<input type="text" name="price">가격 <input type="text"
					name="genre">장르 <input type="submit" value="제출">
			</form>
		</article>
		<article>
			<form name="fmInfo" action="bookList.jsp">
				<input type="submit" value="책 조회하기">
			</form>
		</article>
	</section>
	<footer></footer>
</body>
</html>