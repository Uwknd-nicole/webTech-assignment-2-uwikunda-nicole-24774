<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management</title>
</head>
<body>

<h2>Create New Student</h2>
<form action="createStudent" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    <br>
    <label for="age">Age:</label>
    <input type="number" id="age" name="age" required>
    <br>
    <label for="grade">Grade:</label>
    <input type="text" id="grade" name="grade" required>
    <br>
    <input type="submit" value="Create Student">
</form>

<hr>

<h2>Delete Student</h2>
<form action="deleteStudent" method="post">
    <label for="studentId">Student ID:</label>
    <input type="text" id="studentId" name="studentId" required>
    <br>
    <input type="submit" value="Delete Student">
</form>

<hr>

<h2>Search Student</h2>
<form action="searchStudent" method="post">
    <label for="searchKeyword">Search Keyword:</label>
    <input type="text" id="searchKeyword" name="searchKeyword" required>
    <br>
    <input type="submit" value="Search Student">
</form>

<hr>

<h2>List of Students</h2>
<table border="1">
    <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Grade</th>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.age}</td>
            <td>${student.grade}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
