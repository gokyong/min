<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
<h2>${member.userId}님의 하루 달성도</h2><br>
<p>today percent</p>
</div>
   
  <ul class="nav nav-pills nav-justified">
    <li class="nav-item">
      <a class="nav-link" href="boardlist">한줄게시판</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="todolist?tday=${today}&userId=${member.userId }">todolist 돌아가기</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="todowriteform?userId=${member.userId }">할일추가</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="menu">메인메뉴</a>
    </li>
  </ul><br>
 </div>
<div class="progress">
  <div class="progress-bar" style="width:${todoper }%">${todoper }%</div>
</div>
<c:if test = "${todoper<50 }" >
<h1> 좀 더 계획된 일에 집중하세요! </h1>
</c:if>
<c:if test = "${todoper>=50 }" >
<h1> 거의 다 왔습니다. 얼른하고 쉬자! </h1>
</c:if>
<c:if test = "${todoper=50 } " >
<h1> 오늘 하루 고생많았습니다. 뿌듯 </h1>
</c:if>
</body>
</html>