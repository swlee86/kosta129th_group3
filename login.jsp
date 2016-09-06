<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%
 request.setCharacterEncoding("utf-8"); 
 String id = request.getParameter("id");            
 String name = request.getParameter("name");
 String pswd = request.getParameter("pswd");
 String email = request.getParameter("email");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

 try{
  Class.forName("oracle.jdbc.OracleDriver");
  conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kglim", "1004");
  String sql = "SELECT id,pswd FROM study_test WHERE id='"+id+"'";
  stmt=conn.createStatement();
  rs=stmt.executeQuery(sql);
	 if(rs.next()){
		 do{
			 out.println("로그인 성공");
			 response.sendRedirect("http://localhost:8090/stydy_go/hul.html");
		 }while(rs.next());
		 
	 }else{
			out.println("<script>alert('아이디와 비밀번호를 확인하세요');</script>");

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