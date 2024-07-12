<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	text-align: center;
}
</style>
</head>
<body>
	<%
	String sort = request.getParameter("sort");
	String info = request.getParameter("info");

	Vector bList = new Vector();

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String pwd = "1234";
	Connection conn = DriverManager.getConnection(url, user, pwd);

	String sql = "select * from book where " + sort + " like '%" + info + "%'";
	PreparedStatement ps = conn.prepareStatement(sql);

	ResultSet rs = ps.executeQuery();

	while (rs.next()) {
		bList.add(rs.getInt("bnum"));
		bList.add(rs.getString("name"));
		bList.add(rs.getString("writer"));
		bList.add(rs.getInt("price"));
		bList.add(rs.getString("genre"));

		out.println("<table><tr><th>도서 번호</th><td>" + bList.get(0) + "</td></tr><tr><th>제목</th><td>" + bList.get(1)
		+ "</td></tr><tr><th>작가</th><td>" + bList.get(2) + "</td></tr><tr><th>가격</th><td>" + bList.get(3)
		+ "</td></tr><tr><th>장르</th><td>" + bList.get(4) + "</td></tr></table>");
	}
	ps.close();
	conn.close();
	%>


</body>
</html>