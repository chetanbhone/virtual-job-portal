<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom ">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      
      
<c:if test="${userobj.role eq 'admin'}">
      
      
           <li class="nav-item">
        <a class="nav-link" href="add_job.jsp"><i class="fa fa-plus-circle"></i>Post Job</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="view_jobs.jsp"><i class="fas fa-eye"></i> View Job</a>
      </li>
     
      
      </c:if>
      
 
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
    
    <c:if test="${not empty userobj }">
    
    <a href="#" class="btn btn-light mr-1"><i class="fas fa-user"></i>Admin</a>   
      <a href="#" class="btn btn-light"><i class="fas fa-sign-in-alt"></i>Logout</a>   
   
    </c:if>
    
     <c:if test="${ empty userobj }">
    
    <a href="login.jsp" class="btn btn-light mr-1"><i class="fas fa-sign-in-alt"></i>Login</a>   
      <a href="signup.jsp" class="btn btn-light"><i class="fas fa-user"></i>Signup</a>   
   
    </c:if>
   
    </form>
  </div>
</nav>