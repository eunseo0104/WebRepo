<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Byeoneunseo profile</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/WebClass/css/blog.css">
	<link rel="stylesheet" type="text/js" href="/WebClass/js/blog.js">
</head>

<body id="mainbody">
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #ff66b9">
		<a class="navbar-brand" href="blog.html">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
				<li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);"><a class="nav-link" href=myprofile.html>profile <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);"><a class="nav-link" href="club.html">club</a></li>
				<li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);"><a class="nav-link" href="favorite.html">favorite</a></li>
			</ul>
		<%-- 세션에 사용자정보가 없는 경우 --%>
    <%
    	UserVO user = (UserVO)session.getAttribute("user");
    	if(user==null){
    %>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/signup">Sign up</a>
    <%} else {%>
    <%-- 세션에 사용자정보가 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getName() %>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
         <form action="/WebClass/bloglogout" method="post">
            <button type="submit" class="dropdown-item">Sign out</button>
          </form>
             <div class="dropdown-divider"></div>
           <button type="button" class="dropdown-item">Action1</button>
           <button type="button" class="dropdown-item">Action2</button>

	      </div>
	    </li>
	    </ul>
	    <% }%>
		</div>
		
	</nav>
	<div>
		<!-- <img src = ""> -->
		<h1 id="mainP">BLOG MAIN</h1>
		<h1 id="subP1">This is </h1>
		<h1 id="subP2">ByeonEunseo</h1>
		<h1 id="subP3">'s blog</h1>
	</div>

	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">로그인 결과</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Save changes</button>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	<script src="../js/blog.js"></script>
</body>

</html>
