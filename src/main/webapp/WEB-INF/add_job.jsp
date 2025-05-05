<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Job</title>
    <%@include file="all_component/all_css.jsp" %>
    <style>
        .text-center {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .text-center h5 {
            margin-top: 10px; 
        }
    </style>
</head>
<body style="background-color: #f0f1f2;">
<c:if test="${userobj.role ne 'admin' }">
   <c:redirect url="login.jsp"></c:redirect>
   </c:if> 
    <%@include file="all_component/navbar.jsp"%>

    <div class="container p-2">
        <div class="col-md-10 offset-md-1">
            <div class="card">
                <div class="card-body">
                    <div class="text-center text-success">
                        <i class="fas fa-user-friends fa-3x"></i>
                       
                        
                        <c:if test="${not empty succMsg }">
                            <div class="alert alert-success" role="alert">${succMsg}</div>
                            <c:remove var="succMsg"/>
                        </c:if>
                        <h5>Add Jobs</h5>
                      <%--   <c:if test="${not empty errorMsg }">
                            <div class="alert alert-danger" role="alert">${errorMsg}</div>
                            <c:remove var="errorMsg"/>
                        </c:if> --%>
                    </div>

                    <form action="add_job" method="post">
                        <div class="form-group">
                            <label>Enter Title</label>
                            <input type="text" name="title" required class="form-control" placeholder="Enter job title">
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label>Location</label>
                                <select name="location" class="custom-select" id="inlineFormCustomSelectPref" required>

                                    <option value="" selected>Choose...</option>
                                    <option value="Odisha">Odisha</option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Gujarat">Gujarat</option>
                                    <option value="Bhubaneswar">Bhubaneswar</option>
                                    <option value="Delhi">Delhi</option>
                                    <option value="Bangalore">Bangalore</option>
                                    <option value="Chennai">Chennai</option>
                                    <option value="Hyderabad">Hyderabad</option>
                                </select>
                            </div>

                            <div class="form-group col-md-4">
                                <label>Category</label>
                                <select name="category" class="custom-select" id="inlineFormCustomSelectPref" required>
                                    <option value="" selected>Choose...</option>
                                    <option value="IT">IT</option>
                                    <option value="Developer">Developer</option>
                                    <option value="Banking">Banking</option>
                                    <option value="Engineer">Engineer</option>
                                    <option value="Teacher">Teacher</option>
                                </select>
                            </div>

                            <div class="form-group col-md-4">
                                <label>Status</label>
                                <select class="form-control" name="status" required>
                                    <option value="Active" selected>Active</option>
                                    <option value="Inactive">Inactive</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Enter Description</label>
                            <textarea required rows="6" name="desc" class="form-control" placeholder="Enter job description"></textarea>
                        </div>

                        <button class="btn btn-success" type="submit">Publish Job</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
