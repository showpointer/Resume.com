<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용정보 등록</title>
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
        <div>
          <center><h1>채용정보 등록</h1></center>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form action='add.do' method='post'>
            <div class="form-group">
                      회사명<input id="company"  class="form-control"  type='text' name='company' placeholder="삼성전자">
            </div>
            <div class="form-group">
          	직무
			<input id="job" class="form-control" type='text' name='job' placeholder="소프트웨어 개발자">
            </div>
            <div class="form-group">
                     질문
				 <textarea id="question" class="form-control" placeholder="자신의 장점은?,자신의 단점은?,성장과정을 설명하시오(콤마로 구분)" name='question' rows="10" cols="60"></textarea>
            </div>
            <div class="form-group">
            IMG
				 <input id="img" class="form-control"  type='text' name='img' placeholder="IMG URL">
            </div>
            <div class="form-group">
                       시작날짜
				<input id="starteddate" class="form-control"  type='text' name='starteddate' placeholder="2016-06-12">
                        마감날짜
				<input id="endeddate"  class="form-control"  type='text' name='endeddate' placeholder="2016-06-30">
            </div>
            
            <div class="form-group">
            <div class="col-sm-12 text-center">
				<button class="btn btn-primary" type="submit" >추가</button>
				<button class="btn btn-danger" type="reset">취소</button>
            </div>
        </div>
          </form>
        </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<jsp:include page="/Tail.jsp"/>
</body>
</html>
