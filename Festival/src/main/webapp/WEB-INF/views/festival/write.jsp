<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <section id="container">
 
  <form role="form" method="post" autocomplete="off">
   <p>
    <label for="title">글 제목</label><input type="text" id="title" name="title" />
   </p>
   <p>
    <label for="content">글 내용</label><textarea id="content" name="content"></textarea>
   </p>
   <p>
    <label for="writer">작성자</label><input type="text" id="writer" name="writer" />
   </p>
   <p>
    <button type="submit">작성</button>
   </p>  
  </form>

 </section>
</body>
</html>