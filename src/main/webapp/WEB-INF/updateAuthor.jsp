<%@ page import="com.example.mylibrary.model.Author" %><%--
  Created by IntelliJ IDEA.
  User: Artavazd
  Date: 29.04.2023
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Author</title>
</head>
<%Author author = (Author) request.getAttribute("author");%>
<body>
Update Author
<a href="/author">back</a>
<form action="/updateAuthor" method="post">
    <input name="id" type="hidden" value="<%=author.getId()%>">
    Name <input type="text" name="name" value=" <%=author.getName()%>"><br>
    Surname <input type="text" name="surname" value="<%=author.getSurname()%>"><br>
    Email <input type="text" name="email" value="<%=author.getEmail()%>"><br>
    Age <input type="text" name="age" value="<%=author.getAge()%>"><br>
    <input type="submit" value="update">
</form>
</body>
</html>
