<%@ page import="com.example.mylibrary.model.Author" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.mylibrary.model.Book" %><%--
  Created by IntelliJ IDEA.
  User: Artavazd
  Date: 29.04.2023
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Book</title>
</head>
<%List<Author> authors = (List<Author>) request.getAttribute("author"); %>
<%Book book = (Book) request.getAttribute("book");%>
<body>
Update Book
<a href="/book">back</a>
<form action="/updateBook" method="post">
  <input type="hidden" name="id" value="<%=book.getId()%>">
  Title <input name="title" type="text" value="<%=book.getTitle()%>"><br>
  Description <input name="description" type="text" value="<%=book.getDescription()%>"><br>
  Price <input name="price" type="text" value="<%=book.getPrice()%>"><br>
  Author:
  <select name="authorID">
    <%for (Author author : authors) {%>
    <option value="<%=author.getId()%>"><%=author.getName()%> <%=author.getSurname()%>
    </option>
    <%}%>
  </select>
  <input type="file" name="profilePic"><br>
  <input type="submit" value="update">
</form>
</body>
</html>
