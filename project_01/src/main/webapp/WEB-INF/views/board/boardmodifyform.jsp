<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<form action="boardmodify" method="post">
  <c:forEach items="${boardview}" var="dto">
  <div class="form-group">
     <label for="번호">번호</label>
    <input readonly class="form-control" name="bnum" value="${dto.bnum}">
  </div>
  <div class="form-group">
    <label for="제목">제목</label>
    <input type="text" class="form-control" name="btitle" value="${dto.btitle}">
  </div>
  <div class="form-group">
    <label for="내용">내용</label>
    <input type="text" class="form-control" name="bcontent" value="${dto.bcontent}">
  </div>
  <button type="submit" class="btn btn-primary">수정완료</button>
  	</c:forEach>
</form>

</body>
</html>