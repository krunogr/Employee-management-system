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
                            <td>ID of employee: </td>
                            <td><input type="text" name="id" required="true" requiredMessage="ID of employee is required" placeholder="ID of employee"</td>
                        </tr>

                        <tr >
                        </tr>
                        <tr >
                            <td colspan="2" style=" text-align:center;"> <input type="submit" value="Delete employee"/></td>
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
                    <sql:update dataSource="${con}" var="forma">DELETE FROM employees WHERE id='<c:out value="${param.id}"/>'</sql:update>
                        <p style="margin-left: 260px">  Employee is removed!</p>
                </c:if>   
            </div>
        </div>
    </body>
</html>
