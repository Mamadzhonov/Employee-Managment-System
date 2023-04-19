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
                        <title>Update Post</title>
                    </head>

                    <body>
                        <div class="hearderLinks">
                            <h1 class="text-info">Change your Entry</h1>
                            <a class="btn btn-info" href="/shows">Back to Shows</a>
                        </div>

                        <form:form action="/show/edit/${updatedForm.id}" method="POST" modelAttribute="updatedForm">

                            <div class="col-md-5 mb-3">
                                <form:label path="title">Title</form:label>
                                <form:input path="title" class="form-control" placeholder="Title" />
                                <form:errors class="text-danger" path="title"></form:errors>
                            </div>

                            <div class="col-md-5 mb-3">
                                <form:label path="network">Network</form:label>
                                <form:input path="network" class="form-control" />
                                <form:errors path="network" class="text-danger"></form:errors>
                            </div>

                            <div class="col-md-5 mb-3">
                                <form:label path="description">Description</form:label>
                                <form:textarea path="description" class="form-control" />
                                <form:errors path="description" class="text-danger"></form:errors>
                            </div>
                            <button class="btn btn-success">Submit</button>
                            <a class="btn btn-primary" href="/shows">Cancel</a>
                            <a class="btn btn-danger" href="/show/delete/${updatedForm.id}">Delete</a>

                        </form:form>
                    </body>

                    </html>