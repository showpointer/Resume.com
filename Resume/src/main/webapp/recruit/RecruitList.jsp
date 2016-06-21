<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자소서 목록</title>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<h1 align='center'>채용정보 목록</h1>
<table border="1" style='margin:auto; width:1000px' class="table" class="table table-condensed" class="table table-hover">
<tr style='background:purple;color:white' >
  <th>번호</th>
  <th>기업명</th>
  <th>채용직무</th>
  <th>시작날짜</th>
  <th>마감날짜</th>
  <th></th>

</tr>
<c:forEach var="recruit" items="${recruit}">
<tr> 
  <td>${recruit.rno}</td>
  <td><a href='update.do?rno=${recruit.rno}'>${recruit.company}</a></td>
  <td>${recruit.job}</td>
  <td>${recruit.startedDate}</td>
  <td>${recruit.endedDate}</td>
  <td><a href='delete.do?rno=${recruit.rno}'>[삭제]</a></td>
</tr>
</c:forEach>
</table>
<br>
<p align='center'><a href='add.do' ><button class="btn btn-info">새 채용정보 쓰기</button></a></p>
<jsp:include page="/Tail.jsp"/>
</body>
</html>