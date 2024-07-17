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
<style>
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
</style>
</head>
<body><%@ include file="bookHeader.jsp"%><section>
		<article>
			<h2>검색 도서 조회</h2>
		</article>
		<%
		String sort = request.getParameter("sort");
		String info = request.getParameter("info");

		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String pwd = "1234";
		Connection conn = DriverManager.getConnection(url, user, pwd);

		String sql = "select * from book where " + sort + " like '%" + info + "%'";
		PreparedStatement ps = conn.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			int bnum = rs.getInt("bnum");
			String name = rs.getString("name");
			String writer = rs.getString("writer");
			int price = rs.getInt("price");
			String genre = rs.getString("genre");
		%>
		<article>
			<table>
				<tr>
					<th>도서번호</th>
					<td><%=bnum%></td>
					<th>도서 제목</th>
					<td><%=name%></td>
				</tr>
				<tr>
					<th>작가</th>
					<td><%=writer%></td>
					<th>장르</th>
					<td><%=genre%></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><%=price%></td>
					<td colspan="2" class="addbtn"><input type="button" value="도서 삭제" class="addbtn2"></td>
				</tr>
			</table>
		</article>

		<%
		}
		ps.close();
		conn.close();
		%>

	</section>
</body>
</html>