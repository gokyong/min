<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<form action="todomodify" method="post">
<c:forEach items="${todomodify}" var="dto">

  <div class="form-group">
    <label for="시작시작">start time</label>
    <input type="text" class="form-control" value="${dto.ttime1 }" name="ttime1">
  </div>
  <div class="form-group">
    <label for="마감시간">end time</label>
    <input type="text" class="form-control" value="${dto.ttime2 }" name="ttime2">
  </div>
  <div class="form-group">
    <label for="할 일">todo</label>
    <input type="text" class="form-control" value="${dto.tdo }" name="tdo">
  </div>
  <div class="form-group">
    <label for="오늘 날짜">date</label>
    <input type="number" class="form-control" value="${dto.tday }" name="tday">
  </div>
  <div class="form-group">
    <label for="tnum"></label>
    <input type="hidden" class="form-control" value="${dto.tnum }" name="tnum">
  </div>
  <div class="form-group">
    <label for="tnum"></label>
    <input type="hidden" class="form-control" value="${dto.userId }" name="userId">
  </div>
  
  <button type="submit" class="btn btn-primary">수정완료</button>

  </c:forEach>
  </form>

</body>
</html>