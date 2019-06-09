<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FESTIVAL_LIST</title>
</head>
<body>
<table border="1">
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
            </tr>
        </thead>
        <tbody>
        	<c:forEach items="${list}" var="list">
	        	<tr>
	        		<td> ${list.f_NO} </td>
	        		<td> <a href="/festival/read?f_NO=${list.f_NO} ">${list.f_SUBJECT} </a></td>
	        	</tr>
        	</c:forEach>
        </tbody>
    </table>
</body>
</html>