<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<form action="writeboard" method="post">
  <div class="form-group">
    <label for="제목">제목</label>
    <input type="text" class="form-control" placeholder="제목을 작성하세요" name="btitle">
  </div>
  <div class="form-group">
    <label for="내용">내용</label>
    <input type="text" class="form-control" placeholder="내용을 작성하세요" name="bcontent">
  </div>
  <div class="form-group">
    <label for="할 일">작성자</label>
    <input readonly class="form-control" name="userId" value="${member.userId}">
  </div>


  <button type="submit" class="btn btn-primary">작성완료</button>
  <a href="boadlist"><button class="btn btn-primary">게시판</button></a>
</form>
</body>
</html>	