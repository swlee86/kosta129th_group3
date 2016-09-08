<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<script type="text/javascript">
$(function(){
	$('#login_dialog').dialog(
			{
				 autoOpen:false,
			     width : "330px",
			     resizable:false,
			     modal:true
			}		
		);

		$('#open_button').click(function(){
			$('#login_dialog').dialog('open')
		});
		
		
		$('#register_dialog').dialog(
				{
					 autoOpen:false,
				     width : "800px",
				     resizable:false,
				     modal:true
				}		
			);

			$('#sign_button').click(function(){
				$('#register_dialog').dialog('open')
			});
			
			$('#register_go').click(function(){
				$('#login_dialog').dialog('close')
				$('#register_dialog').dialog('open')
			});
			
			
			
			
			$("#contents").click(function(){ 
				$("#content").load("Contents.html"); 
				}); 
				
				$("#member").click(function(){ 
				$("#content").load("Member.html"); 
				}); 
				
				$("#freeboard").click(function(){ 
				$("#content").load("Freeboard.html"); 
				}); 
				
				
				$("#guestbook").click(function(){ 
				$("#content").load('GuestBook.html'); 
				});
				
				$("#databoard").click(function(){ 
				$("#content").load('DataBoard.html'); 
				}); 
				
				$("#mainbutton").click(function(){ 
				$("#content").load('Member.html'); 
				}); 
				
				$("#source").click(function(){ 
				$("#content").load('Source.html'); 
				}); 
				
				$("#bookinfo").click(function(){ 
				$("#content").load('bookmain.html'); 
				}); 
			
}); 
</script>

<style type="text/css">
.navbar {
background:#FFFFFF;
}

.navbar .navbar-center {
  display: inline-block;
  float: none;
  vertical-align: top;
  text-align: center;
}

#page_footer {
height: 60px;
background: #f5f5f5;
}
.footer_text{
margin: 20px 0;
color: #777;
}

.jumbotron {
	padding-left: 50px; 
	width: 80%;	
}

#container {
	width: 100%;
	margin-right: auto;
	margin-left: auto;
}
#header {
	height: 50px;
	width: 100%;
	background-color:#ff00ff;
}

#content {
	width: 90%;
	height: 90%;
	padding: 20px;
	margin-right: 160px;
	margin-left: 160px;
}
#leftnav {
	float: left;
	width: 10%;
	height: 90%;
	background-color: gray;
	padding: 5px;
		
}

#leftnav ul{
	margin-left: 0;
	padding-left: 0;
	list-style-type: none;
	font-family: '돋움', Helvetica, sans-serif;
	font-size: 12px;
}

#leftnav a{
	display: block;
	width: 130px;
	padding-top: 3px;
	padding-right: 3px;
	padding-bottom: 3px;
	padding-left: 3px;
	border-bottom-width: 1px;
}

#leftnav a:link, .navlist a:visited{
color: #ffffff;
text-decoration: underline;
font-weight: bold;
}

#leftnav a:visited{
   color: #ffffff;
   text-decoration: underline;
   font-weight: bold;
}

#leftnav a:hover{
	text-decoration: none;
	color: #0000ff;
}

#footer {
	background-color: black;
	padding: 10px;
	clear: both;
	font-family: '돋움', Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
	color: white;
	text-align: center;
	height: 10%;
}

</style>
</head>
<body>

<div id="container">

	<div id="header">
	<jsp:include page="/CommonModule/Top.jsp"></jsp:include>
	</div>


	<!--메뉴영역-->
	<div id="leftnav">
	<jsp:include page="/CommonModule/Left.jsp"></jsp:include>
<!-- 	
		<ul id="navlist" style="margin-top: 15px">
		<li><a href="#" id="sign_button" style="background-color: gray">Register</a></li>
		<li><a href="#"></a></li>
		<li><a href="#" id="open_button" style="background-color: gray">Login</a></li>
		</ul>
	 -->
	</div>
	
	

	<div id="content">
	<!-- 콘텐츠 중앙영역 -->
		<div class="jumbotron">
  			<h1>Hello, world!</h1>
  				<p>kosta 129th 3조의 홈페이지에 오신 것을 환영합니다.</p>
			  	<p><a class="btn btn-primary btn-lg" id="mainbutton" href="#" role="button">3조에 대해 알아봅시다</a></p>
		</div>
	</div>


	<div align="center" id="footer">
	copyright@3조
	</div>

</div>



   <!-- info Login_pop_up -->   	
   <div id="login_dialog" title="Login">
   	 <div class="container">
      <div class="row">
        <div class="page-header">
        </div>
        <div class="col-md-3">
          <div class="login-box well">
        <form accept-charset="UTF-8" role="form" method="post" action="">
            <div class="form-group">
                <label for="username-email">이메일</label>
                <input name="user_id" value='' id="username-email" placeholder="E-mail" type="text" class="form-control" />
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input name="password" id="password" value='' placeholder="Password" type="password" class="form-control" />
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="Login" />
            </div>
            <span class='text-center'><a href="#" class="text-sm">비밀번호 찾기</a></span>
            <hr />
            <div class="form-group">
                <a href="#" class="btn btn-default btn-block m-t-md" id="register_go">회원가입</a>
            </div>
        </form>
          </div>
        </div>
      </div>
    </div>
   </div>
   
   
  <!-- info Register_pop_up -->   	
   <div id="register_dialog" title="Register">
   	  <div class="contentwrap">
  <article class="container">
    <div class="page-header">
	  <h1>회원가입 <small>일반회원가입</small></h1>
    </div>
   </article>
    <form class="form-horizontal" action="register.jsp" method="post">
    <div class="form-group">
    <label for="inputEmail" class="col-sm-2 control-label">이메일</label>
    <div class="col-sm-6">
    <input type="email" class="form-control" id="inputEmail" name="email" placeholder="이메일">
    </div>
    </div>
    <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-6">
    <input type="password" class="form-control" id="inputPassword" name="pswd" placeholder="비밀번호">
    <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
    </div>
    </div>
       <div class="form-group">
    <label for="inputPasswordCheck" class="col-sm-2 control-label">비밀번호 확인</label>
    <div class="col-sm-6">
    <input type="password" class="form-control" id="inputPasswordCheck" placeholder="비밀번호 확인">
      <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
    </div>
    </div>
    <div class="form-group">
    <label for="inputName" class="col-sm-2 control-label">이름</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="inputName" name="name" placeholder="이름">
    </div>
    </div>
    <div class="form-group">
    <label for="inputNumber" class="col-sm-2 control-label">휴대폰번호</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" id="inputNumber" name="phnum" placeholder="휴대폰번호">
      <p class="help-block">- 없이 적어주세요.</p>
    </div>
      <div class="col-sm-2">
      <a class="btn btn-default" href="#" role="button">인증번호 전송(현재 미사용)</a>
      </div>
    </div>
    <div class="form-group">
    <label for="inputNumberCheck" class="col-sm-2 control-label">인증번호 확인</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="inputNumberCheck" placeholder="이름">
    <p class="help-block">전송된 인증번호를 입력해주세요.</p>
    </div>
    </div>
      <div class="form-group">
    <label for="inputAgree" class="col-sm-2 control-label">약관 동의</label>
    <div class="col-sm-6 checkbox">
      <label>
        <input id="agree" type="checkbox"> <a href="/agreement"> 이용약관</a>에 동의합니다.
    </label>
    </div>
    </div>
    <div class="form-group">
    <label for="inputName" class="col-sm-2 control-label"></label>
    <div class="col-sm-6">
      <button type="submit" class="btn btn-primary" value="register">회원가입</button>
    </div>
    </div>
    </form>
   </div>
  </div> 
   
</body>



</html>