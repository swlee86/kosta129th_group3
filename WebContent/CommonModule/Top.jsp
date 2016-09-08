<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
  <div class="container-fluid">


    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">Kosta 129th</a>
    </div>


    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#" id="member">Member</a></li>
        <li><a href="#" id="contents">Content</a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Board<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#" id="freeboard">Free-Board</a></li>
            <li><a href="#" id="databoard">Data(준비중)</a></li>
            <li class="divider"></li>
            <li><a href="#" id="source">Source(준비중)</a></li>
          </ul>
         </li>
        
        <!-- Utill메뉴 추가  -->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Utill<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#" id="bookinfo">도서 정보</a></li>
            <li><a href="#" id="databoard">준비중</a></li>
            <li class="divider"></li>
            <li><a href="#" id="source">준비중</a></li>
          </ul>
         </li>
         
        <li><a href="#" id="guestbook">GuestBook<span class="sr-only">(current)</span></a></li>
      </ul>
      
      <form class="navbar-form navbar-left" role="search" method=get action="http://www.google.co.kr/search" target="_blank">
        <div class="form-group">
          <input type=hidden name=ie value=utf-8/>
          <input type=hidden name=oe value=utf-8/>
          <input type=hidden name=hl value=ko />
          <input type=text class="form-control" placeholder="Google Search" name=q size=20 maxlength=255 style=font-size:13pt value="" />
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      


      <ul class="nav navbar-nav navbar-right">
        <li><a href="https://cafe.naver.com/kosta129" target="_blank">Kosta129기 Cafe</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Etc Link<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="https://www.oracle.com/index.html" target="_blank">Oracle</a></li>
            <li><a href="http://www.eclipse.org/home/index.php" target="_blank">Eclipse</a></li>
            <li class="divider"></li>
            <li><a href="http://colorscripter.com/" target="_blank">Color Scripter</a></li>
            <li class="divider"></li>
            <li><a href="http://192.168.0.126/" target="_blank">강사님 FTP 주소</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>