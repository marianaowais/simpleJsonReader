
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>deal details</title>
    </head>
    <h3>this is dynamic details about this deal reading from JSON API </h3>
    <body>
        <%@page import="com.hoteldeals.hotelsdeals.JsonReader,java.util.*,org.json.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%  String id = request.getParameter("dealindex");
          
            request.setAttribute("dealattr", JsonReader.getJsonById(id));
        %>


        <form> 
            <table width="40%">
                <c:forEach items="${dealattr}" var="key">
                    <tr><td>${key}</td> <td> </tr> 
                </c:forEach>
            </table>
        </form>
    </body>
</html>
