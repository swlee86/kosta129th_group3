<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%
 request.setCharacterEncoding("utf-8");  
 String id = request.getParameter("user_id");            
 String pswd = request.getParameter("password");
 String chk = request.getParameter("uselogin");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
Boolean isLogin = false; //로그인 확인

 try{
  Class.forName("oracle.jdbc.OracleDriver");
  conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kglim", "1004");
  String sql = "select email,pswd from homepage where email='" + id + "' and PSWD='" + pswd + "'";
  stmt=conn.createStatement();
  rs=stmt.executeQuery(sql);

  while(rs.next()){
	   	session.setMaxInactiveInterval(3600);
	   	session.setAttribute( "sessionId", id );
	   	isLogin = true;
   	
   	Cookie idcookie = new Cookie("idcookie", id);
		if(chk!=null){
		   	//Cookie 생성
		   	idcookie.setMaxAge(24*60*60);
		   	response.addCookie(idcookie);
		}else{
			idcookie.setMaxAge(0);
		}
   	response.sendRedirect("index.jsp");
  }
  if( !isLogin ){
   	out.print( "아이디와 비밀번호를 확인하세요" );
%>
   <input type="button" name="input" value="뒤로가기" onClick="window.location='index.jsp'"/>
<%
  }
 }

 catch(Exception e){
  out.println(e);
 }finally{
	 //stmt.close();
	 //rs.close();
	 //conn.close();
	 
 }
%>