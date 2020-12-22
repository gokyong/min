<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="java.util.Calendar"%>

<% Calendar cal = Calendar.getInstance( );  // 현재 날짜/시간 등의 각종 정보 얻기

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH) + 1;
int day = cal.get(Calendar.DAY_OF_MONTH);

String monthstr = "";
if(month < 10){
	monthstr = "0"+month;
} else {
	monthstr = String.valueOf(month);
}

String daystr = "";
if(day < 10){
	daystr = "0"+day;
} else {
	daystr = String.valueOf(day);
}
String today = year + monthstr + daystr;
request.setAttribute("today", today);
%>

<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>

<div class="container-fluid p-3 my-3 bg-dark text-white">
<h2>${member.userId}님 하윙</h2><br>
<p>Todolist로 계획세우고 한줄게시판에서 글을 남기세요</p>
</div>
<div class="container">
   
  <ul class="nav nav-pills nav-justified">
    <li class="nav-item">
      <a class="nav-link" href="boardlist">한줄게시판</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="todolist?tday=${today}&userId=${member.userId}">todolist</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">팀별 카페(서버off, 미완)</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">채팅(서버off, 미완)</a>
    </li>
  </ul><br>
 </div>





</body>
</html>