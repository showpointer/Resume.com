<%@ page 
	language='java' 
	contentType='text/html; charset=UTF-8'
    pageEncoding='UTF-8'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>채용 정보 상세</title>
<style>
ul { padding: 0; }
li { list-style:none; }

label {
  float: left;
  text-align: right;
  width: 60px;
}
</style>
</head>
<body>
<h1 align='center'>기업정보</h1>
<form action="../application/ApplicationForm.jsp" method="post">
		<ul>
			<li>
				<label for='company'>회사명</label> 
				<input id='company' type='text' name='company' value='${recruit.company}'>
			</li>
			<li>
				<label for='job'>직무</label> 
				<input id='job' type='text' name='job' value='${recruit.job}'>
			</li>
			<br>
			<li><label for='question'>질문</label>
				<textarea id='question' name='question' rows='10' cols='60'>${recruit.question}</textarea>
			</li>
		    <li>
				<img align="middle" id='img' name='img' src='${recruit.img}'>
			</li>
		</ul>
		<p align='center'><button type="submit">자기소개서 쓰기</button></p>
</form>
<jsp:include page='/Tail.jsp'/>
</body>
</html>