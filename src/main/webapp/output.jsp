<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Output</title>
 <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
	<table border=1 align='center'>
		<tr>
			<th colspan='4'>Movie List</th>
		</tr>
		<tr>
			<th>ID</th>
			<th>영화제목</th>
			<th>장르</th>
			<th>영화 등록일</th>
		</tr>
		
		<c:forEach var="dto" items="${list}">
		<tr>
			<td>${dto.seq}</td>
			<td>${dto.title}</td>
			<td>${dto.genre}</td>
			<td>${dto.write_date}</td>
		</tr>
		</c:forEach>
		
		<tr>
			<form action='delete.movies' method='get'>
				<th colspan='4'>
					<input type='text' placeholder='id' name='seq'>
					<button>Delete</button>
				</th>
			</form>
		</tr>
		
		<tr style="background-color: cadetblue">
			<form action='update.movies' method='get'>
				<th colspan='4'>
					<input type='text' placeholder='id' name='seq'>
				</th>
				</tr>
					
				<tr style="background-color: cadetblue">
					<th colspan='4'>
					<input type='text' placeholder='title' name='title'>
					</th>
				</tr>
					
				<tr style="background-color: cadetblue">
					<th colspan='4'>
						<input type='text' placeholder='genre' name='genre'>
					</th>
				</tr>
				
				<tr style="background-color: cadetblue">
					<th colspan='4'>
						<button>Update</button>
				</th>
			</form>
		</tr>
		<tr>
			<th colspan='4'>
			<button id='backButton'>Back</button>
		</th>
		</tr>
	</table>
	<script>
		document.getElementById('backButton').onclick = function() {
			location.href = ('index.jsp');
		}
	</script>
</body>
</html>
