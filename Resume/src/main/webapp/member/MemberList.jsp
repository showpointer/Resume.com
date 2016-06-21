<%-- 2. 프런트 컨트롤러 적용 - 링크에 .do 붙임 --%>
<%@ page 
  language="java" 
  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<h1 align='center'>회원 목록</h1>
<table border="1" style='margin:auto; width:1000px' class="table" class="table table-condensed" class="table table-hover">
<tr style='background:gray;color:white'>
  <th>번호</th>
  <th>이름</th>
  <th>이메일</th>
  <th>생성날짜</th>
  <th></th>
 </tr>
<c:forEach var="member" items="${members}"> 
<tr> 
<td>${member.no}</td>
<td><a href='update.do?no=${member.no}'>${member.name}</a></td>
<td>${member.email}</td>
<td>${member.createdDate}</td>
<td><a href='delete.do?no=${member.no}'>[삭제]</a></td>
</tr>
</c:forEach>
</table>
<br>
<p align='center'><a href='add.do' ><button class="btn btn-info">신규회원 추가</button></a></p>
<jsp:include page="/Tail.jsp"/>
</body>
</html>