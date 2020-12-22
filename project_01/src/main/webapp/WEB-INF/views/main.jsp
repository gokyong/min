<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>


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
<title>gok's free app</title>
</head>
<body>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>곡용의 페이지</h1>
    <p>하루 계획을 세우기도 하고 소통도 하는 공간</p>
  </div>
</div>

<p class="text-center">로그인을 해주세요.</p>
  <ul class="nav justify-content-center">
    <c:if test="${member == null}">
    <li class="nav-item">
      <a class="nav-link" href="register">회원가입</a>
    </li>
    </c:if>
   <c:if test="${member != null}">
    <li class="nav-item">
      <a class="nav-link" href="logout">로그아웃</a>
    </li>
    </c:if>
   <c:if test="${member == null}">
    <li class="nav-item">
      <a class="nav-link" href="trylogin">로그인</a>
    </li>
    </c:if>
   
  </ul>





</body>
</html>