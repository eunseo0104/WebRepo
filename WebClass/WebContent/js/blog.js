function menu_over(e) {
  e.setAttribute("class", "nav-item active"); //<li class = "nav-item active">

}

function menu_out(e) {
  e.setAttribute("class", "nav-item"); //<li class = "nav-item">

}

$(document).ready(
  function() {
    $('#loginForm').submit(
      function(event) {
        //자동으로 submit되는 것 막기
        event.preventDefault();
        //id, pwd 가져오기
        var id = $('#id').val();
        var pwd = $('#pwd').val();
        console.log(id, pwd);

        $.post("http://httpbin.org/post", {
          "id": id,
          "pwd": pwd
        }, function(data) {
          var myModal = $('#myModal');
          myModal.modal();
          myModal.find('.modal-body').text(
            data.form.id + "님 로그인 되었습니다.");

        });
      });
  });
$(document).ready(
  function() {
    $('#registerForm').submit(
      function(event) {
        //자동으로 submit되는 것 막기
        event.preventDefault();
        //id, pwd 가져오기
        var radioValue = $('#grade').val();
        var listValue = $('#list').val();
        var classValue = $('#class').val();
        var name = $('#name').val();
        $.post("http://httpbin.org/post", {
          "radioValue": radioValue,
          "classValue": classValue,
          "listValue": listValue,
          "name": name
        }, function(data) {
          var myModal = $('#registerModal');
          myModal.modal();
          myModal.find('.modal-body').text(
            data.form.name + "님 회원가입 되었습니다.");
        });
      });
  });
