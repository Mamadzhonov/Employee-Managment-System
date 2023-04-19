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
                        <title>New Employee</title>
                    </head>

                    <body>

                        <div class="hearderLinks">
                            <h1 class="text-info">Create an new Employee</h1>
                            <a class="btn btn-primary" href="/shows">Back to Employees</a>
                        </div>
                        <p class="text-danger">
                            <c:out value="${existedTitle}"></c:out>
                        </p>
                        <div class="col">
                            <form:form action="/show/new" method="POST" modelAttribute="newShow">

                                <div class="col-md-5 mb-3">
                                    <form:label path="firstName">First Name</form:label>
                                    <form:input path="firstName" class="form-control" placeholder="First Name" />
                                    <form:errors class="text-danger" path="firstName"></form:errors>
                                </div>

                                <div class="col-md-5 mb-3">
                                    <form:label path="lastName">Last Name</form:label>
                                    <form:input path="lastName" class="form-control" placeholder="Last Name" />
                                    <form:errors class="text-danger" path="lastName"></form:errors>
                                </div>
                                <div class="col-md-5 mb-3">
                                    <form:label path="age">Age</form:label>
                                    <form:input path="age" class="form-control" placeholder="Age" />
                                    <form:errors class="text-danger" path="age"></form:errors>
                                </div>
                                <div class="col-md-5 mb-3">
                                    <form:label path="status">Status</form:label>
                                    <form:input path="status" class="form-control" placeholder="Status" />
                                    <form:errors class="text-danger" path="status"></form:errors>
                                </div>
                                <div class="col-md-5 mb-3">
                                    <form:label path="compensation">Compensation</form:label>
                                    <form:input path="compensation" class="form-control" placeholder="Compensation" />
                                    <form:errors class="text-danger" path="compensation"></form:errors>
                                </div>
                                <div class="col-md-5 mb-3">
                                    <form:label path="location">Station Location</form:label>
                                    <form:input path="location" class="form-control" placeholder="Station Location" />
                                    <form:errors class="text-danger" path="location"></form:errors>
                                </div>

                                <div class="col-md-5 mb-3">
                                    <form:label path="phoneNum">Phone Number</form:label>
                                    <form:input path="phoneNum" class="form-control" />
                                    <form:errors class="text-danger" path="phoneNum"></form:errors>
                                </div>
                                  <div class="col-md-5 mb-3">
                                    <form:label path="adress">Adress</form:label>
                                    <form:input path="adress" class="form-control" />
                                    <form:errors class="text-danger" path="adress"></form:errors>
                                </div>
                                <button class="btn btn-success">Submit</button>
                            </form:form>
                    </body>
                    </html>