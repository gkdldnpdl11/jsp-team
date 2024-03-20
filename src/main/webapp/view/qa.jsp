<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{width: 600px; border-collapse:collapse; text-align: center;}
			table,th,td{border: 1px solid black; padding: 3px}
		</style>
	</head>
	<body>
		<h2>Q&A 게시판</h2>
		<table>
			<thead>
				<tr>
					<th>NO</th>
					<th colspan="3">제목</th>
					<th>작성자</th>
					<th>상태</th>
					<th>등록 일시</th>
				</tr>
			</thead>
			<input type="text" name="search">
			<input type="submit" value="검색">
			<tbody>
				<tr>
					<c:choose>
						<c:when test="${empty list}">
							<tr>
								<td colspan="7"><h4>텅</h4></td>
							</tr>
						</c:when>
						<%-- <c:otherwise>
							<c:forEach var="k" items="${list}" varStatus="vs">
								<tr>
									<td></td>
									<td></td>
									<td><a href="제목을 누르면 내용 보이기"></td>
									<td></td>
								</tr>
							</c:forEach>
						</c:otherwise> --%>
					</c:choose>
				</tr>
			</tbody>
		</table>
	</body>
</html>