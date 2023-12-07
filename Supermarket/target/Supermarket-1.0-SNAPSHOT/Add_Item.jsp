<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Image</title>
</head>
<body>

<h2>Insert Image</h2>

<form action="ImageUploadServlet" method="post" enctype="multipart/form-data">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="description">Price:</label>
    <textarea id="price" name="price" rows="4" required></textarea><br>

    <label for="image">Choose Image:</label>
    <input type="file" id="image" name="image" accept="image/*" required><br>
     
    <label for="category">Category:</label>
    <textarea id="category" name="category" rows="4" required></textarea><br>
    
    <input type="submit" value="Add Item">
</form>
<a href="displaData.jsp">Fetch Data</a>
</body>
</html>
