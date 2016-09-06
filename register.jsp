<%@page import="javafx.scene.control.Alert"%>
<%@page import="sun.nio.cs.ext.ISCII91"%>
<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
 request.setCharacterEncoding("utf-8"); 
 String email = request.getParameter("email");     
 String pswd = request.getParameter("pswd");
 String name = request.getParameter("name");
 String phnum = request.getParameter("phnum");
 
// out.print(email+"/"+pswd+"/"+name+"/"+phnum);

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

 
 try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kglim", "1004");
  out.print(conn.isClosed());
  
  String sql = "SELECT email FROM homepage WHERE email='"+email+"'";
  stmt=conn.createStatement();
  rs=stmt.executeQuery(sql);
	 if(rs.next()){
		 do{
			 out.print("해당 아이디는 이미 존재합니다.");
		 }while(rs.next());
		 
	 }else{
		 String sql2 = "INSERT INTO homepage(email, name, pswd, phnum)  VALUES('"+email+"','"+name+"','"+pswd+"','"+phnum+"')";
		 stmt.executeUpdate(sql2);
		 	out.print("회원가입 완료");

	 }

 }
 catch(Exception e){
  out.println(e);
 }finally{
/* 	 stmt.close();
	 rs.close();
	 conn.close(); */
 }

 %>