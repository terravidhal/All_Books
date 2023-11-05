<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Show Books :  <c:out value="${book.title}"/></title>
        <!-- for Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css"/> 
        <!-- YOUR own local CSS -->
        <link rel="stylesheet" href="/css/style.css"/>
    </head>
<body>
    
    <div class="container-fluid fs-2 ml-200"> 
        <h1 class="text-primary ml-30" style="padding-top: 100px;">
            <c:out value="${book.title}"></c:out>
        </h1>
		<ul>
			<li><span class="bold">Description:</span> <c:out value="${book.description}"/></li>
			<li><span class="bold">Language:</span> <c:out value="${book.language}"/></li>
			<li><span class="bold">Number of pages:</span> <c:out value="${book.numberOfPages}"/></li>
		</ul>
        <div class="back ml-30">
            <a href="/books">Back to All books</a>
        </div>
    </div>  
  
  <!-- link Js -->
  <script type="text/javascript" src="/js/main.js"></script> 
  <!-- For any Bootstrap that uses jquery -->
  <script src="/webjars/jquery/jquery.min.js"></script> 
  <!--For any Bootstrap that uses JS -->
  <script src="/webjars/bootstrap/js/bootstrap.min.js"></script> 
</body>
</html>
