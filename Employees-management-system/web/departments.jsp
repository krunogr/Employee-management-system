<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="display" uri="http://displaytag.sf.net" %>
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title>EMS</title> 
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div id="container">
            <p style="font-family: Arial; font-size: 20px;  font-weight: bold; margin-left: 200px">Employees management system</p>
            <table id="nav">
                <tr>
                    <td><a href="${pageContext.servletContext.contextPath}/index.jsp">Employees</a></td>
                    <td><a href="${pageContext.servletContext.contextPath}/addEmployee.jsp">Add employee</a></td>
                    <td><a href="${pageContext.servletContext.contextPath}/removeEmployee.jsp">Remove employee</a></td>
                    <td><a href="${pageContext.servletContext.contextPath}/updateEmployee.jsp">Update employee</a></td>
                    <td><a href="${pageContext.servletContext.contextPath}/departments.jsp">Departments</a></td>

                </tr>
            </table>
            </br></br>
            <div id="data">
                <sql:setDataSource var="con"
                                   driver="com.mysql.jdbc.Driver"
                                   url="${applicationScope.URL_FOR_DB}"
                                   user="${applicationScope.USERNAME_FOR_DB}"
                                   password="${applicationScope.PASSWORD_FOR_DB}"/>

                <sql:query dataSource="${con}" var="forma">SELECT DISTINCT department FROM employees</sql:query>
                    <table width="50%" style="margin-left: 180px;">
                        <tr>
                            <th>Department</th>
                            <th>Number of employees</th>
                            <c:forEach var="row" items="${forma.rows}">
                                <sql:query dataSource="${con}" var="forma2">SELECT COUNT(*)  AS 'number' FROM employees WHERE department='${row.department}'</sql:query>

                                <tr>
                                    <td><c:out value="${row.department}"/></td>
                                <c:forEach var="row2" items="${forma2.rows}">
                                    <td><c:out value="${row2.number}"/></td>
                                </c:forEach>
                            </tr>
                        </c:forEach>

                    </tr>

                </table>
            </div>
        </div>
    </body>
</html>
