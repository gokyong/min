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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
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
<h2>${member.userId}님의 하루 일과</h2><br>
<p>계획을 세우고 달성도를 통해 하루를 평가하세요</p>
</div>

<div class="container">
   
  <ul class="nav nav-pills nav-justified">
    <li class="nav-item">
      <a class="nav-link" href="boardlist">한줄게시판</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="todopercent?tday=${today}&userId=${member.userId}">주간 달성도</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="todowriteform?userId=${member.userId }">할일추가</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="menu">메인메뉴</a>
    </li>
  </ul><br>
 </div>

<div class="container">
  <h2>To do list</h2>
  <p> ${member.userId }의 todo 리스트</p>            
  <table class="table">
    <thead>
      <tr>
        <th>시간</th>
        <th>할일</th>
        <th>완료유무</th>
        <th>버튼</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${todolist}" var="dto">
      <tr>
        <td>${dto.ttime1}~${dto.ttime2}</td>
        <td>${dto.tdo}</td>
        <td>${dto.tsuccess}</td>
        <td><a href="tsuccess?tnum=${dto.tnum}&tday=${dto.tday}&userId=${member.userId }"><button type="button" class="btn btn-primary btn-sm">success</button></a>
        <a href="successreturn?tnum=${dto.tnum}&tday=${dto.tday}&userId=${member.userId }"><button type="button" class="btn btn-primary btn-sm">return</button></a>
		  <a href="tododelete?tnum=${dto.tnum}&tday=${dto.tday}&userId=${member.userId }"><button type="button" class="btn btn-primary btn-sm">delete</button></a>
		  <a href="todomodifyform?tnum=${dto.tnum}&tday=${dto.tday}&userId=${member.userId }"><button type="button" class="btn btn-primary btn-sm">modify</button></a>        
        </td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
    
</div>



</body>
</html>