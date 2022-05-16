<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.dto.Book"%>
<%@ page import="com.dao.BookRepository"%>
<html>
<head>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<title>도서 목록</title>
</head>
<body>
<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서목록</h1>
		</div>
	</div>
	<%
	BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>

	<div class="container">
		<div class="row" align="left"  >
			<%
				for (int i = 0; i < listOfBooks.size(); i++) {
					Book book = listOfBooks.get(i);
			%>
		<div class="container" style="margin:1em">
		<%-- <img src="./resources/images/<%=book.getFilename()%>" style ="width: 50%"> --%>
		<img src="C:/upload/<%=book.getFilename()%>" style ="width: 50%">
				<h3>[<%=book.getBookId()%>] <%=book.getName()%></h3>
				</div>
				<div class="col-md-10"  style="border-bottom: 1px solid; padding:10px"  >
				<p><%=book.getDescription()%>
				<p><%=book.getAuthor()%> | <%=book.getPublisher()%> |  <%=book.getUnitPrice()%>원
			</div>
			<div class="col-md-2 "  style="border-bottom: 1px solid; padding:10px"  >
				<a style="" href="./book.jsp?id=<%=book.getBookId()%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
				</div>
				
			<%
				}
			%>
			</div>
		</div>
		<br>
	<jsp:include page="footer.jsp" />
</body>
</html>






