<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.String" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자기소개서 등록</title>
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
<jsp:include page="/Header.jsp"/>
<%  
    String[] q = {"","","","","",""};
	String company = "";
	String job     = "";
	if(request.getParameter("company") != null){
		company = request.getParameter("company");
		job     = request.getParameter("job");
		String question = request.getParameter("question");
		String[] s = question.split(",");

		for(int i=0;i<s.length;i++){
			q[i] = q[i].concat(s[i]);
	 	}
	}
%>
<h1 align='center'>자기소개서 등록</h1>
<form action='add.do' method='post'>
<div align="right">
<b>회사명</b><input id="company" type='text' name='company' placeholder="삼성전자" value=<%=company%>>
<b>직무</b><input id="job" type='text' name='job' placeholder="소프트웨어 개발자" value=<%=job %>>
</div>
<br>
<div class="col-xs-3"> <!-- required for floating -->
  <!-- Nav tabs -->
  <ul class="nav nav-tabs tabs-left"><!-- 'tabs-right' for right tabs -->
    <li class="active"><a href="#1" data-toggle="tab">1</a></li>
    <li><a href="#2" data-toggle="tab">2</a></li>
    <li><a href="#3" data-toggle="tab">3</a></li>
    <li><a href="#4" data-toggle="tab">4</a></li>
    <li><a href="#5" data-toggle="tab">5</a></li>
    <li><a href="#6" data-toggle="tab">6</a></li>
  </ul>
</div>
<div class="col-xs-9">
    <!-- Tab panes -->
    <div class="tab-content">
      <div class="tab-pane active" id="1">
          <div class="form-group">
                         제목
              <input class="form-control" placeholder="제목" id="title" type='text' name='title' size="200">
                         질문1
              <input class="form-control" placeholder="질문1" id="question1" type='text' name='question1' value="<%=q[0]%>">
                         답변1
              <textarea class="form-control" id="answer1" name='answer1' rows="20" cols="50"></textarea>            
          </div>
	  </div>
      <div class="tab-pane" id="2">
      	  <div class="form-group">
                         질문2
              <input class="form-control" placeholder="질문2" id="question2" type='text' name='question2' size="200" value="<%=q[1]%>">
                         답변2
              <textarea class="form-control" id="answer2" name='answer2' rows="20" cols="50"></textarea>           
          </div>
      </div>
      <div class="tab-pane" id="3">
            	  <div class="form-group">
                         질문3
              <input class="form-control" placeholder="질문3" id="question3" type='text' name='question3' size="200" value="<%=q[2]%>">
                         답변3
              <textarea class="form-control" id="answer3" name='answer3' rows="20" cols="50"></textarea>          
          </div>
      </div>
      <div class="tab-pane" id="4">
          <div class="form-group">
                         질문4
               <input class="form-control" placeholder="질문4" id="question4" type='text' name='question4' size="200" value="<%=q[3]%>">
                         답변4
             <textarea class="form-control" id="answer4" name='answer4' rows="20" cols="50"></textarea>   
          </div>
      </div>
      <div class="tab-pane" id="5">
            	  <div class="form-group">
                         질문5
              <input class="form-control" placeholder="질문5" id="question5" type='text' name='question5' size="200" value="<%=q[4]%>">
                         답변5
              <textarea class="form-control" id="answer5" name='answer5' rows="20" cols="50"></textarea>   
          </div>
      </div>
      <div class="tab-pane" id="6">
            	  <div class="form-group">
                         질문6
              <input class="form-control" placeholder="질문6" id="question6" type='text' name='question6' size="200" value="<%=q[5]%>">
                         답변6
              <textarea class="form-control" id="answer6" name='answer6' rows="20" cols="50"></textarea>   
          </div>
      </div>
    </div>
</div>
<br><br><br><br><br><br>
  <div class="col-sm-12 text-center">
  		<input type='hidden' id="email" name="email" value="${sessionScope.member.email}">
		<input type='hidden' id="rno" name="rno" value='0'>
		<button class="btn btn-primary" type="submit">추가</button>
		<button class="btn btn-danger" type="reset">취소</button>
</div>
</form>

<jsp:include page="/Tail.jsp"/>
</body>
</html>
