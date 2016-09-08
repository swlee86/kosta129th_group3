<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
ResultSet rs = null;
PreparedStatement pstmt=null;
try {

	String userid =request.getParameter("id");
	String userpass= request.getParameter("password");
	
	Class.forName("oracle.jdbc.OracleDriver");
	

	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kglim", "1004");
	

	
	
	String sql = "insert into studentinfo1(sname,spassword) values(?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2,userpass);
	
	int row=pstmt.executeUpdate();
	%>
	  <script>location.href="Ex17_Form.html";
	  alert("회원가입했습니다!");
	  </script>
	  <%
	if(row>0){
		System.out.println("반영된 row수는"+row);
	}
}catch (Exception e) {
	System.out.println(e.getMessage());
}finally{
	if(rs!= null){try{rs.close();} catch(Exception e){}}
	if(rs!= null){try{pstmt.close();} catch(Exception e){}}
	if(rs!= null){try{conn.close();} catch(Exception e){}}
}

%>


