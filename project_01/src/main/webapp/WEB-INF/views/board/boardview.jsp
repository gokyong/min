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
<h2>자유게시판 - 글 상세보기</h2><br>
<p> 자신의 글만 삭제, 수정할 수 있습니다.</p>
</div>
<div class="container-fluid">
  
  <ul class="nav nav-pills nav-justified">
  <c:forEach items="${boardview}" var="dto">
    <li class="nav-item">
      <a class="nav-link" href="boardlist">돌아가기</a>
    </li>
    <li class="nav-item">
     <a class="nav-link" href="todolist?tday=${today}&userId=${member.userId}">TodoList</a>
    </li>
    <c:if test="${member.userId == dto.userId}">
    <li class="nav-item">
      <a class="nav-link" href="boarddelete?bnum=${dto.bnum}">삭제</a>
    </li>
    </c:if>
    <c:if test="${member.userId == dto.userId}">
    <li class="nav-item">
      <a class="nav-link" href="boardmodifyform?bnum=${dto.bnum}">수정하러가기</a>
    </li>
    </c:if>
    </c:forEach>
  </ul><br>
</div>

<div class="container">
  <h2></h2>
  <p></p>            
  <table class="table">
   <c:forEach items="${boardview}" var="dto">
    <thead>
      <tr>
        <th>제목 : ${dto.btitle}  --------  작성자 :  ${dto.userId } </th>
      </tr>
    </thead>
    <tbody>
   
      <tr>
        <td>${dto.bcontent}</td>
      </tr>
      <tr>
        <td>${dto.join_date}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>