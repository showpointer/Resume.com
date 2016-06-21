<%@ page 
	language='java' 
	contentType='text/html; charset=UTF-8'
    pageEncoding='UTF-8'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>자기소개서 정보</title>
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
<jsp:include page='/Header.jsp'/>
<center><h1>자기소개서 정보</h1></center>
<form action='update.do' method='post'>
<div align="right">
<b>회사명</b><input id="company" type='text' name='company' placeholder="삼성전자" value='${application.company}'>
<b>직무</b><input id="job" type='text' name='job' placeholder="소프트웨어 개발자" value='${application.job}'>
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
              <input class="form-control" placeholder="제목" id="title" type='text' name='title' size="50" value='${application.title}'>
                         질문1
              <input class="form-control" placeholder="질문1" id="question1" type='text' name='question1' size="50" value='${application.question1}'>
                         답변1
              <textarea class="form-control" id="answer1" name='answer1' rows="20" cols="50">${application.answer1}</textarea>            
          </div>
	  </div>
      <div class="tab-pane" id="2">
      	  <div class="form-group">
                         질문2
              <input class="form-control" placeholder="질문2" id="question2" type='text' name='question2' size="50" value='${application.question2}'>
                         답변2
              <textarea class="form-control" id="answer2" name='answer2' rows="20" cols="50">${application.answer2}</textarea>           
          </div>
      </div>
      <div class="tab-pane" id="3">
            	  <div class="form-group">
                         질문3
              <input class="form-control" placeholder="질문3" id="question3" type='text' name='question3' size="50" value='${application.question3}'>
                         답변3
              <textarea class="form-control" id="answer3" name='answer3' rows="20" cols="50">${application.answer3}</textarea>          
          </div>
      </div>
      <div class="tab-pane" id="4">
          <div class="form-group">
                         질문4
               <input class="form-control" placeholder="질문4" id="question4" type='text' name='question4' size="50" value='${application.question4}'>
                         답변4
             <textarea class="form-control" id="answer4" name='answer4' rows="20" cols="50">${application.answer4}</textarea>   
          </div>
      </div>
      <div class="tab-pane" id="5">
            	  <div class="form-group">
                         질문5
              <input class="form-control" placeholder="질문5" id="question5" type='text' name='question5' size="50" value='${application.question5}'>
                         답변5
              <textarea class="form-control" id="answer5" name='answer5' rows="20" cols="50">${application.answer5}</textarea>   
          </div>
      </div>
      <div class="tab-pane" id="6">
            	  <div class="form-group">
                         질문6
              <input class="form-control" placeholder="질문6" id="question6" type='text' name='question6' size="50" value='${application.question6}'>
                         답변6
              <textarea class="form-control" id="answer6" name='answer6' rows="20" cols="50">${application.answer6}</textarea>   
          </div>
      </div>
    </div>
</div>
<br><br><br><br><br><br>
  <div class="col-sm-12 text-center">
  		<input type='hidden' id='email' name='email' value='${sessionScope.member.email}'>
		<input type='hidden' id="rno" name="rno" value='0'>
		<input type='hidden' id='ano' name='ano' value='${application.ano}'>
		<button class="btn btn-primary" type="submit">저장</button>
		<button class="btn btn-danger" onclick='location.href="list.do"'>취소</button>
</div>
</form>
<!--
<form action='update.do' method='post'>
		<ul>
			<li>
				<label for='company'>회사명</label> 
				<input id='company' type='text' name='company' value='${application.company}'>
			</li>
			<li>
				<label for='job'>직무</label> 
				<input id='job' type='text' name='job' value='${application.job}'>
			</li>
			<li><label for='title'>제목</label>
				 <input id='title' type='text' name='title' size='30' value='${application.title}'>
			</li>
			<br>
			<li><label for='question'>질문</label>
				 <input id='question1' type='text' name='question1' size='50' value='${application.question1}'>
			</li>
			<li><label for='answer'>내용</label>
				<textarea id='answer1' name='answer1' rows='5' cols='40'>${application.answer1}</textarea>
			</li>
			<li><label for='question'>질문</label>
				 <input id='question2' type='text' name='question2' size='50' value='${application.question2}'>
			</li>
			<li><label for='answer'>내용</label>
				<textarea id='answer2' name='answer2' rows='5' cols='40'>${application.answer2}</textarea>
			</li>
			<li><label for='question'>질문</label>
				 <input id='question3' type='text' name='question3' size='50' value='${application.question3}'>
			</li>
			<li><label for='answer'>내용</label>
				<textarea id='answer3' name='answer3' rows='5' cols='40'>${application.answer3}</textarea>
			</li>
			<li><label for='question'>질문</label>
				 <input id='question4' type='text' name='question4' size='50' value='${application.question4}'>
			</li>
			<li><label for='answer'>내용</label>
				<textarea id='answer4' name='answer4' rows='5' cols='40'>${application.answer4}</textarea>
			</li>
			<li><label for='question'>질문</label>
				 <input id='question5' type='text' name='question5' size='50' value='${application.question5}'>
			</li>
			<li><label for='answer'>내용</label>
				<textarea id='answer5' name='answer5' rows='5' cols='40'>${application.answer5}</textarea>
			</li>
			<li><label for='question'>질문</label>
				 <input id='question6' type='text' name='question6' size='50' value='${application.question6}'>
			</li>
			<li><label for='answer'>내용</label>
				<textarea id='answer6' name='answer6' rows='5' cols='40'>${application.answer6}</textarea>
			</li>
			
		</ul>
		<input type='hidden' id='email' name='email' value='${sessionScope.member.email}'>
		<input type='hidden' id='rno' name='rno' value='0'>
		<input type='hidden' id='ano' name='ano' value='${application.ano}'>
		<input type='submit' value='저장'>
		<input type='button' value='삭제' onclick='location.href="delete.do?ano=${application.ano}";'>
<input type='button' value='취소' onclick='location.href="list.do"'>
</form>
 -->
<jsp:include page='/Tail.jsp'/>
</body>
</html>