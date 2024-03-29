<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,com.bikram.jsp.tagDemo.Student" %>

<%
	//just create some sample data ... normally provided in MVC
	List<Student> data = new ArrayList<>();
	data.add(new Student("John","Doe",false));
	data.add(new Student("Bikram","Paudel",false));
	data.add(new Student("Gorkhali","Nepali",true));
	
	pageContext.setAttribute("myStudents", data);
%>
<html>
<body>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Student</th>
		</tr>
	
		<c:forEach var="tempStudent" items="${myStudents}">
			<tr>
				<td>${tempStudent.firstName}</td>
				<td>${tempStudent.lastName}</td>
				<td>
					<c:choose>
					
						<c:when test="${tempStudent.goldStudent}" >
							Special Discount
						</c:when>
						<c:otherwise>
							No soup for you!
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>