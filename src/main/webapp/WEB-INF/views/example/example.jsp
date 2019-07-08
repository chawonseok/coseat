<%@page import="com.web.dto.Example"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<body>
	<table class="table">

		<thead>
			<tr class="tr">
				<th class="th">번호</th>
				<th class="th">이름</th>
				<th class="th">나이</th>

			</tr>
		</thead>

		<tbody>
			<c:forEach var="n" items="${exam}">
				<tr class="tr">
					<td class="td">${n.pk_num}</td>
					<td class="td">${n.name}</td>
					<td class="td">${n.age}</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>