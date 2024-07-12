<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
margin: 10px auto;
	padding: 0px 20px;
	width: 80%;
}

#lbtn {
	float: left;
}

#rbtn {
	float: right;
}

header input {
	border: 1px solid gray;
	border-radius: 20px;
	padding: 10px;
}

header h1 {
	clear: both;
	text-align: center;
	font-size: 40px;
	padding-top: 10px;
}

nav {
	float: left;
	width: 20%;
}

nav li {
	list-style: none;
	font-size: 20px;
}

nav a {
	text-decoration: none;
	color: gray;
}

article div {
	float: left;
	width: 35%;
	margin: 0px 20px;
	padding-bottom: 30px;
}

footer {
	clear: both;
	text-align: center;
	font-size: 12px;
	text-align: center;
}
</style>
</head>
<body>
	<header>
		<input type="button" value="돌아가기" id="lbtn" >
		<input type="button" value="앞으로가기" id="rbtn">
		<h1>title</h1>
		<nav>
			<fieldset>
				<legend>menu</legend>
				<ul>
					<li><a href="#">cookie</a></li>
					<li><a href="#">candy</a></li>
					<li><a href="#">chocolate</a></li>
					<li><a href="#">jelly</a></li>
				</ul>
			</fieldset>
		</nav>
	</header>
	<section>
		<article>
			<div>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s, when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesetting, remaining essentially unchanged. It was popularised in
				the 1960s with the release of Letraset sheets containing Lorem Ipsum
				passages, and more recently with desktop publishing software like
				Aldus PageMaker including versions of Lorem Ipsum.</div>
		</article>
		<article>
			<div>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s, when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesetting, remaining essentially unchanged. It was popularised in
				the 1960s with the release of Letraset sheets containing Lorem Ipsum
				passages, and more recently with desktop publishing software like
				Aldus PageMaker including versions of Lorem Ipsum.</div>
		</article>
	</section>
	<footer>
		<hr>
		<div>using footer tag</div>
	</footer>
</body>
</html>