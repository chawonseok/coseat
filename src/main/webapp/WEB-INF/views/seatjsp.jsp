<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<body>
	<table class="table">

		<thead>
			<tr class="tr">
				<th class="th">��ȣ</th>
				<th class="th">�̸�</th>
				<th class="th">����</th>

			</tr>
		</thead>

		<tbody>
			<c:forEach var="n" items="${seat}">
				<tr class="tr">${n.x}
					<td class="td">${n.y}</td>
					

				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>