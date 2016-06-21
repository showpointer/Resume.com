<%-- 메뉴 추가 --%>
<%@page import="spms.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/landing-page.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/bootstrap.vertical-tabs.min.css">

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script language="javascript">
 function OpenPopUp(no)
 {
	 var winform = window.open("PopUp.do?rno="+no,"보기",  "toolbar=0, status=0, scrollbars=auto, location=0, menubar=0,width=900, height=1000"); 
	 winform.moveTo(screen.availWidth/2-300/2,screen.availHeight/2 - 400/2);
 }
</script>
</head>
 
  <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="../index.jsp">레쥬메닷컴</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${sessionScope.member.email eq 'admin@admin.com'}">
                    <li>
                        <a href="<%=request.getContextPath()%>/member/list.do">사용자 관리</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/recruit/list.do">채용정보 관리</a>
                    </li>
                    </c:if>
                     <c:if test="${!empty sessionScope.member.email and !empty sessionScope.member.email}">
                    <li>
                        <a href="<%=request.getContextPath()%>/recruit/View.do">채용달력</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/application/list.do">자기소개서</a>
                    </li>
                    </c:if>
                    <c:if test="${empty sessionScope.member or empty sessionScope.member.email}">
                    <li>
                        <a href="<%=request.getContextPath()%>/member/add.do">회원가입</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/auth/login.do">로그인</a>
                    </li>
                    </c:if> 
                    <c:if test="${!empty sessionScope.member and !empty sessionScope.member.email}">
                    <li>
						<a href="<%=request.getContextPath()%>/auth/logout.do">로그아웃</a>
					</li>
					</c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<br><br><br>

<!-- Header -->
