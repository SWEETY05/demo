<html>
<head>
<title> Student Confirmation </title></head>

<body>

Student is confirmed : ${param.firstName} ${param.lastName }


<br>
Fev languages is: 

<ul>
<%

String [] lang = request.getParameterValues("Fevlang");
if(lang!=null)
{
 for(String l : lang)
 {
	 out.println("<li>" + l +"</li>");
 }}

%>


</ul>




</body>
</html>