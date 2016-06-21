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
<h1 align='center'>나의 자기소개서 목록</h1>
<br>
<table border="1" style='margin:auto; width:1000px' class="table" class="table table-condensed" class="table table-hover">
<tr style='background:skyblue'>
  <th>번호</th>
  <th>기업명</th>
  <th>채용직무</th>
  <th>제목</th>
  <th>작성일</th>
  <th></th>

</tr>
<c:forEach var="application" items="${application}">
<%-- 자신이 작성한 글만 보이게 함 --%> 
<c:if test="${sessionScope.member.email eq application.email}">
<tr> 
  <td>${application.ano}</td>
  <td>${application.company}</td>
  <td>${application.job}</td>
  <td><a href='update.do?ano=${application.ano}'>${application.title}</a></td>
  <td>${application.createdDate}</td>
  <td><a href='delete.do?ano=${application.ano}'>[삭제]</a></td>
 <!--  <td>${sessionScope.member.email}</td>  -->
</tr>
</c:if>
</c:forEach>
</table>
<br>
<p align='center'><a href='add.do' ><button class="btn btn-info">새 자기소개서 쓰기</button></a></p>
<jsp:include page="/Tail.jsp"/>
</body>
</html>