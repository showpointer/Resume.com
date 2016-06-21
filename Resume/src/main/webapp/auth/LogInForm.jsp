<%-- 프런트 컨트롤러 적용 - 링크에 .do 붙임 --%>
<%@ page 
  language="java" 
  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<jsp:include page="/Header.jsp"/>
      <article class="container">
        <div class="page-header">
          <center><h1>사용자 로그인</h1></center>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form action='login.do' method='post'>
            <div class="form-group">
              <label for="InputEmail">이메일 주소</label>
              <input type="email" class="form-control" name="email" placeholder="이메일 주소">
            </div>
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" name="password" placeholder="비밀번호">
            </div>
             <div class="form-group text-center">
              <button type="submit" class="btn btn-info">로그인<i class="fa fa-check spaceLeft"></i></button>
              <button type="reset" class="btn btn-warning">취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
        </div>
          </form>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<jsp:include page="/Tail.jsp"/>
</body>
</html>