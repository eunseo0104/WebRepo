<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel = "stylesheet" href="../css/footer.css">
<style>
div.container {
	padding-top: 30px;
	padding-botton: 20px;
}
</style>
<script>
	function menu_over(e) {
		e.setAttribute("class", "nav-item active"); //<li class = "nav-item active">

	}
	function menu_out(e) {
		e.setAttribute("class", "nav-item"); //<li class = "nav-item">

	}
</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<%@ include file ="menu.jsp" %>
			<form class="form-inline my-2 my-lg-0" id="loginForm">
				<input class="form-control mr-sm-2" type="text" placeholder="ID"
					aria-label="ID" id="id" required> <input
					class="form-control mr-sm-2" type="password" placeholder="PWD"
					aria-label="PWD" id="pwd" required>
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
			</form>
		</div>
	</nav>
	<div class="container">
		<h1>Hello, Bootstrap Js</h1>
		<p>두기 피는 같이, 이 교향악이다. 같이, 앞이 길을 곳이 인간은 때문이다. 같은 사라지지 가진 속에 사람은 사는가
			사막이다. 작고 동산에는 밝은 넣는 위하여서, 얼음 방지하는 얼마나 미묘한 칼이다. 보배를 이상, 노래하며 아름다우냐?
			동력은 인생에 맺어, 대고, 가는 꽃이 날카로우나 위하여 것이다. 품고 내려온 그들의 같이, 사막이다. 구하지 붙잡아 새
			되는 것이다. 인간이 얼마나 끝에 위하여 수 황금시대의 칼이다. 인간의 가는 두손을 청춘의 있으랴? 노년에게서 든 속잎나고,
			석가는 속에 굳세게 쓸쓸하랴? 그들의 창공에 사랑의 목숨을 스며들어 것이 끓는 수 할지니, 힘있다. 어디 천고에 수 피고,
			고동을 속에 이 그들의 것이다. 영락과 보배를 장식하는 피가 밥을 하는 교향악이다. 따뜻한 기쁘며, 얼음에 지혜는 청춘을 갑
			이상의 피가 소금이라 칼이다. 이상의 할지라도 얼음이 예수는 충분히 설산에서 이것이다. 그들의 이 그들은 교향악이다. 이상이
			위하여서, 주는 미묘한 구하기 무엇이 역사를 몸이 같은 있다. 보이는 꽃이 그들의 듣는다. 따뜻한 인류의 두손을 투명하되
			길을 있다. 착목한는 천지는 품에 수 그러므로 있는 우리는 힘있다. 있는 바로 무엇을 부패를 같은 가장 봄바람이다. 할지니,
			눈에 현저하게 착목한는 황금시대를 피다. 인류의 가지에 무엇이 보배를 아니다. 튼튼하며, 군영과 열매를 그들은 영원히 그들의
			위하여서. 이상이 있는 것은 석가는 이상의 싸인 고동을 있으랴? 얼음이 목숨이 쓸쓸한 부패뿐이다. 일월과 만천하의 풀밭에
			사막이다..</p>
	</div>
	<%@ include file ="modal.jsp" %>
	<%@ include file = "footer.jsp" %>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(
				function() {
					$('#loginForm').submit(
							function(event) {
								//ìëì¼ë¡ submitëë ê² ë§ê¸°
								event.preventDefault();
								//id, pwd ê°ì ¸ì¤ê¸°
								var id = $('#id').val();
								var pwd = $('#pwd').val();
								console.log(id, pwd);

								$.post("http://httpbin.org/post", {
									"id" : id,
									"pwd" : pwd
								}, function(data) {
									var myModal = $('#myModal');
									myModal.modal();
									myModal.find('.modal-body').text(
											data.form.id + "님 로그인되었습니다.");

								});
							});
				});
	</script>
</body>
</html>