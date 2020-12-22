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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<h2>자유게시판</h2><br>
<p>하단 메뉴 중 글쓰기 클릭 후 자유롭게 글을 남기세요 (데이터 베이스 연동)</p>
</div>

<div class="container-fluid">
  <ul class="nav nav-pills nav-justified">
    <li class="nav-item">
      <a class="nav-link" href="menu">메뉴</a>
    </li>
    <li class="nav-item">
     <a class="nav-link" href="todolist?tday=${today}&userId=${member.userId}">TodoList</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="writeboard_form">글쓰기</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">채팅(서버off, 미완)</a>
    </li>
  </ul><br>
</div>
 
 <div class="container">
  <h2></h2>
  <p></p>            
  <table class="table">
    <thead>
      <tr>
        <th>제목</th>
        <th>작성자</th>
        <th>작성시간</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${boardlist}" var="dto">
      <tr>
        <td><a href="boardview?bnum=${dto.bnum}">${dto.btitle}</a></td>
        <td>${dto.userId}</td>
        <td>${dto.join_date}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>



</body>
</html>