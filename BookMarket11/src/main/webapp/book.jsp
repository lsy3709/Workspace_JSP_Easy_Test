﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ page errorPage="exceptionNoBookId.jsp"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">도서 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img src="c:/upload/<%=book.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-8">
				<h4><b>[<%=book.getCategory()%>]<%=book.getName()%></b></h4>
				<p><%=book.getDescription()%>
				<p><b>도서코드 : </b><span class="badge badge-danger"> <%=book.getBookId()%></span>						
				<p><b>저자</b> : <%=book.getAuthor()%>				
				<p><b>출판사</b> : <%=book.getPublisher()%>
				<p><b>출판일</b> : <%=book.getReleaseDate()%>		
				<p><b>총 페이지수</b> : <%=book.getTotalPages()%>			
				<p><b>재고수</b> : <%=book.getUnitsInStock()%>				
				<h4><%=book.getUnitPrice()%>원</h4>
				<p><a href="#" class="btn btn-info"> 도서주문 &raquo;</a> 
					<a href="./books.jsp" class="btn btn-secondary"> 도서목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
