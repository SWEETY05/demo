
<%@ page import="java.util.*"%>
<html>
<body>

	<!-- step 1: Create HTML form -->
	<form action="todo-demo.jsp">
		Add new items : <input type="text" name="theItem" /> <input
			type="submit" value="submit" />
	</form>

	<!-- step2:Add new items  to "todo" list -->
	<%
		//Get the todo items from the session

	List<String> items = (List<String>) session.getAttribute("myToDoList");

	//if the todo items doesnt exist ,then create new one
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	//see if there form items to add
	String theItem = request.getParameter("theItem");
	if (theItem != null) {
		items.add(theItem);
	}
	%>
	<!-- step3:Display all "to do "items from session -->
	<hr>
	<b> To do List items:</b>
	<br>
	<ol>
		<%
			for (String temp : items) {
			out.println("<li>" + temp + "</li>");
		}
		%>

	</ol>

</body>

</html>