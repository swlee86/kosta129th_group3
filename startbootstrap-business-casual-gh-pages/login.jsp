<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%    
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String userid = request.getParameter("id");
String userpass = request.getParameter("password");
Boolean isLogin = false;
try {
    
    Class.forName("oracle.jdbc.OracleDriver");
    
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kglim", "1004");
    
    stmt = conn.createStatement();
 
    
    
    
    String sql = "select * from studentinfo1 where sname='" + userid + "' and spassword='" + userpass + "'" ;
    rs = stmt.executeQuery(sql);
    while( rs.next()){
        session.setMaxInactiveInterval(3600);
        session.setAttribute( "userid", "true" );
        
        out.print( userid );
        out.print( " ȸ���� �α����� ó���Ǿ����ϴ�." );
        isLogin = true;
        %>
       <!--  <a href= "startbootstrap-business-casual-gh-pages/Main.jsp"> �̵��ϱ� </a> -->
       <script>location.href="Main.jsp";</script>
       
        <%
        }
    if( !isLogin ){
      %>
  	  <script>location.href="Ex17_Form.html";
  	  alert("��ġ�ϴ� id ����� �����ϴ� !"); </script><%
        }
}finally{
    if(rs!= null){try{rs.close();} catch(Exception e){}}
    if(rs!= null){try{stmt.close();} catch(Exception e){}}
    if(rs!= null){try{conn.close();} catch(Exception e){}}
}
%>