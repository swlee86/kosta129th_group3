<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<ul id="navlist" style="margin-top: 15px;color: white;">
	<li>
	<%
	out.print(session.getAttribute("sessionId")+"님 환영홥니다"); 
	 %>
	</ul>
	<script type="text/javascript">
	$(function(){
		$('#update_data').dialog(
				{
					 autoOpen:false,
				     width : "330px",
				     resizable:false,
				     modal:true
				}		
			);
		$('#update').click(function(){
			$('#update_data').dialog('open')
		});
		
	});
	</script>
	<input type="button" name="update" name="update" value="회원정보 수정">
	<input type="button" name="input" value="로그아웃" onClick="window.location='logoutConfirm.jsp'"/>
	
	
 <!-- data update -->
   <div id="update_data" title="Login">
   	 <div class="container">
      <div class="row">
        <div class="page-header">
        </div>
        <div class="col-md-3">
          <div class="login-box well">
        <form accept-charset="UTF-8" role="form" method="post" action="dataupdate.jsp">
            <div class="form-group">
                <label for="username-email">이메일</label>
                <input name="user_id" value='<% session.getAttribute("sessionId"); %>' id="user_id" readonly="readonly" placeholder="E-mail" type="text" class="form-control" />
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input name="password" id="password" placeholder="Password" type="password" class="form-control" />
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="login" />
            </div>
            <span class='text-center'><a href="#" class="text-sm">비밀번호 찾기</a></span>
            <hr />
            <div class="form-group">
                <a href="#" class="btn btn-default btn-block m-t-md" id="update_go">회원정보 수정</a>
            </div>
        </form>
          </div>
        </div>
      </div>
    </div>
   </div>