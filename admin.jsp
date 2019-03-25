<%-- 
    Document   : admin
    Created on : Mar 14, 2019, 8:20:55 PM
    Author     : hp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Admin!</h1>
        <form action="MainController" method="POST">
            <h2>Create New:</h2>
            <select name="dListInsert">
                <option>Tour</option>
                <option>Hotel</option>
                <option>Vehicle</option>
            </select>
            <input type="submit" value="Add" name="action"/>
        </form>
        <form action="MainController" method="POST">
            <h2>Search By ID:</h2>
            ID :<select name="dListSearch">
                <option value="${param.dListSearch}">-Select-</option>
                <option>Tour</option>
                <option>Customer</option>
                <option>Hotel</option>
                <option>Vehicle</option>
            </select>
            <input type="text" name="txtSearch" value=""/>
            <input type="submit" value="Search" name="action"/>
            <c:if test="${requestScope.TourINFO != null}">
                <c:if test="${not empty requestScope.TourINFO}" var="checkList">
                    <h4>Tour Search!</h4>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Location</th>
                                <th>Price</th>
                                <th>Vehicle ID</th>
                                <th>Hotel ID</th>
                                <th>Arrival</th>
                                <th>Duration</th>
                                <th>Delete</th>
                                <th>Update</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.TourINFO}" var="dto">
                                <tr>
                                    <th>${dto.id}</th>
                                    <th>${dto.name}</th>
                                    <th>${dto.des}</th>
                                    <th>${dto.location}</th>
                                    <th>${dto.price}</th>                                    
                                    <th>${dto.vehicle}</th>
                                    <th>${dto.hotel}</th>
                                    <th>${dto.arrival}</th>
                                    <th>${dto.duration}</th>
                                    <th>
                                        <form action="MainController" method="POST">
                                            <input type="hidden" name="txtId" value="${dto.id}" />
                                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                            <input type="hidden" name="dListSearch" value="${param.dListSearch}"/>
                                            <input type="submit" value="Delete" name="action" />
                                        </form>
                                    </th>
                                    <th>
                                        <form action="MainController" method="POST">
                                            <input type="hidden" name="txtId" value="${dto.id}" />
                                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                            <input type="hidden" name="dListSearch" value="${param.dListSearch}"/>
                                            <input type="submit" value="Edit" name="action" />
                                        </form>                
                                    </th>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </c:if>
                <c:if test="${!checkList}">
                    No record found <br/>
                </c:if>
            </c:if>
            <c:if test="${requestScope.CustomerINFO != null}">
                <c:if test="${not empty requestScope.CustomerINFO}" var="checkList">
                    <h4>Tour Search!</h4>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Delete</th>
                                <th>Update</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.CustomerINFO}" var="dto">
                                <tr>
                                    <th>${dto.id}</th>
                                    <th>${dto.name}</th>
                                    <th>${dto.phone}</th>
                                    <th>${dto.email}</th>
                                    <th>${dto.address}</th>
                                    <th>
                                        <form action="MainController" method="POST">
                                            <input type="hidden" name="txtId" value="${dto.id}" />
                                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                            <input type="hidden" name="dListSearch" value="${param.dListSearch}"/>
                                            <input type="submit" value="Delete" name="action" />
                                        </form>
                                    </th>
                                    <th>
                                        <form action="MainController" method="POST">
                                            <input type="hidden" name="txtId" value="${dto.id}" />
                                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                            <input type="hidden" name="dListSearch" value="${param.dListSearch}"/>
                                            <input type="submit" value="Edit" name="action" />
                                        </form>
                                    </th>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </c:if>
                <c:if test="${!checkList}">
                    No record found <br/>
                </c:if>
            </c:if>
            <c:if test="${requestScope.HotelINFO != null}">
                <c:if test="${not empty requestScope.HotelINFO}" var="checkList">
                    <h4>Tour Search!</h4>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Star</th>
                                <th>Address</th>
                                <th>Description</th>
                                <th>Delete</th>
                                <th>Update</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.HotelINFO}" var="dto">
                                <tr>
                                    <th>${dto.id}</th>
                                    <th>${dto.name}</th>
                                    <th>${dto.star}</th>
                                    <th>${dto.address}</th>
                                    <th>${dto.des}</th>
                                    <th>
                                        <form action="MainController" method="POST">
                                            <input type="hidden" name="txtId" value="${dto.id}" />
                                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                            <input type="hidden" name="dListSearch" value="${param.dListSearch}"/>
                                            <input type="submit" value="Delete" name="action" />
                                        </form>
                                    </th>
                                    <th>
                                        <form action="MainController" method="POST">
                                            <input type="hidden" name="txtId" value="${dto.id}" />
                                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                            <input type="hidden" name="dListSearch" value="${param.dListSearch}"/>
                                            <input type="submit" value="Edit" name="action" />
                                        </form>
                                    </th>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <font color="red">
                    ${requestScope.INVALID.idError}</font>
                </c:if>
                <c:if test="${!checkList}">
                    No record found <br/>
                </c:if>
            </c:if>
            <c:if test="${requestScope.VehicleINFO != null}">
                <c:if test="${not empty requestScope.VehicleINFO}" var="checkList">
                    <h4>Tour Search!</h4>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Type</th>
                                <th>Description</th>
                                <th>License Plate</th>
                                <th>Delete</th>
                                <th>Update</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.VehicleINFO}" var="dto">
                                <tr>
                                    <th>${dto.id}</th>
                                    <th>${dto.name}</th>
                                    <th>${dto.type}</th>
                                    <th>${dto.des}</th>
                                    <th>${dto.licenseP}</th>
                                    <th>
                                        <form action="MainController" method="POST">
                                            <input type="hidden" name="txtId" value="${dto.id}" />
                                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                            <input type="hidden" name="dListSearch" value="${param.dListSearch}"/>
                                            <input type="submit" value="Delete" name="action" />
                                        </form>
                                    </th>
                                    <th>
                                        <form action="MainController" method="POST">
                                            <input type="hidden" name="txtId" value="${dto.id}" />
                                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                            <input type="hidden" name="dListSearch" value="${param.dListSearch}"/>
                                            <input type="submit" value="Edit" name="action" />
                                        </form>
                                    </th>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <font color="red">
                    ${requestScope.INVALID.idError}</font>
                </c:if>
                <c:if test="${!checkList}">
                    No record found <br/>
                </c:if>
            </c:if>
        </form>
    </body>
</html>
