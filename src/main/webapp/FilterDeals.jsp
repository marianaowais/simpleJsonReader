
  <%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> hotel deals</title>
    </head>
    <body>
        <%@page import="com.hoteldeals.hotelsdeals.JsonReader,java.util.*,org.json.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <h1>Hotel deals List</h1>

        <%-- * load the static method inti() that fill hoteldeal arry dynamically using json url
           --* using jstl list the table created dynamically according to hoteldeal size 
        --%>
        <%

            String value = request.getParameter("hotelCountryCode");
            request.setAttribute("list", JsonReader.getValue(value).keySet());
          
        %>
        <%-- reminder index pages for best performance  --%>
       
        <form>
         
            <table border="1" width="90%">
                <tr><th> deal index </th><th> link </th></tr>
                        <c:forEach items="${list}" var="index">
                    
                    <tr><td><div style="text-align:center">${index}</div></td><td><a href="dealdetails.jsp?dealindex=${index}" > <div style="text-align:center">more details</div></a></td></tr>
                </c:forEach>
            </table>
        </form>
    </body>

</html>
