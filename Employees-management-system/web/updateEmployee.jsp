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
            <div id="insertdata">
                <form method="POST" name="forma" >
                    <table style="margin-left: 200px">
                        <tr>
                            <td>ID od employee: </td>
                            <td><input type="text" name="id" required="true" requiredMessage="ID od employee is required" placeholder="ID"</td>
                        </tr>
                        <tr>
                            <td>Name: </td>
                            <td><input type="text" name="name" required="true" requiredMessage="Name of employee is required" placeholder="Name"</td>
                        </tr>
                        <tr>
                            <td>Surname: </td>
                            <td><input type="text" name="surname" required="true" requiredMessage="Surname of employee is required" placeholder="Surname"</td>
                        </tr>   
                        <tr>
                            <td>Years of experience: </td>
                            <td><input type="text" name="years_of_experience" required="true" requiredMessage="Years of experience is required" placeholder="Number of year"</td>
                        </tr>
                        <tr>
                            <td>Department: </td>
                            <td><input type="text" name="department" required="true" requiredMessage="Department is required" placeholder="Department"</td>
                        </tr>
                        <tr >
                        </tr>
                        <tr >
                            <td colspan="2" style=" text-align:center;"> <input type="submit" value="Update employee"/></td>
                        </tr>
                        <tr >
                        </tr>

                    </table> 
                </form>

                <sql:setDataSource var="con"
                                   driver="com.mysql.jdbc.Driver"
                                   url="${applicationScope.URL_FOR_DB}"
                                   user="${applicationScope.USERNAME_FOR_DB}"
                                   password="${applicationScope.PASSWORD_FOR_DB}"/>

                <sql:query dataSource="${con}" var="forma">SELECT * from employees</sql:query>
                <c:if test="${pageContext.request.method=='POST'}">
                    <sql:update dataSource="${con}" var="forma">UPDATE employees SET `name`='<c:out value="${param.name}"/>', `surname`='<c:out value="${param.surname}"/>', `years_of_experience`='<c:out value="${param.years_of_experience}"/>', `department`='<c:out value="${param.department}"/>' WHERE id='<c:out value="${param.id}"/>'</sql:update>
                        <p style="margin-left: 250px">  Employee is updated!</p>
                </c:if> 
            </div>
        </div>
    </body>
</html>
