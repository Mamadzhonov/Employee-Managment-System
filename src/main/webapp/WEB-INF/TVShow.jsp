<%@ page isErrorPage="true" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



                    <link rel="stylesheet"
                        href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                        crossorigin="anonymous">
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                        crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                        crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                        crossorigin="anonymous"></script>

                    <link rel="stylesheet" href="/css/showStyle.css">


                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta charset="UTF-8">
                        <title>Books</title>
                    </head>

                    <body>

                        <div class="hearderLinks">
                            <div>
                                <h1 class="text-info">Welcome, <c:out value="${user.userName}"></c:out>
                                </h1>
                            </div>
                            <div>
                                <a class="btn btn-danger" href="/logout">Logout</a>
                            </div>
                        </div>


                        <div>
                            <table class="table table-striped tbl">
                                <thead>
                                    <tr>
                                        <th scope="col">First Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Age</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Compensation</th>
                                        <th scope="col">Station Location</th>
                                        <th scope="col">Phone Number</th>
                                        <th scope="col">Adress</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="show" items="${allShows}">
                                        <tr>
                                            <th scope="row">
                                                <a href="/show/${show.id}">
                                                    <c:out value="${show.title}"></c:out>
                                                </a>
                                            </th>
                                            <td>
                                                <c:out value="${show.network}"></c:out>
                                            </td>
                                            <td>
                                                <c:out value="${book.evgRating}"></c:out>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <p>
                                <a class="btn btn-primary" href="/show/new">Add an Employee </a>
                            </p>
                        </div>
                    </body>

                    </html>