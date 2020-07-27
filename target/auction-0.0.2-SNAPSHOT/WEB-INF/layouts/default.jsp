<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">



    <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
    <%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>



    <%--    <script--%>
    <%--            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>--%>

    <script
            src="${contextRoot}/js/tag-it.min.js"></script>

    <title><tiles:insertAttribute name="title" /></title>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>


    <script type="text/javascript" src="js/index.js"></script>



    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <%--    <link rel="stylesheet" href="css/main.css" type="text/css" />--%>
    <link href="${contextRoot}/css/main.css" rel="stylesheet">
    <script type="text/javascript" src="js/index. js"></script>
</head>
<body>

<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>
<nav class="navbar navbar-expand-lg navbar navbar-light navbar-default" style="background-color: #b0e6df;">

    <div class="navbar-header" style=" order:0;
    margin-left:0;
    margin-right:0;">

        <%--    <a class="navbar-brand" href="#">In~Harmony</a>--%>
        <div style="display: table-row;">
            <button type="button" class="navbar-toggle pull-left" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>

        <%--                <a class="dropdown-item navbar-brand" href="${contextRoot}/">In Medical</a>--%>
        <%--</a>--%>

        <div class="collapse navbar-collapse" id="myNavbar">
            <%--        <ul class="nav navbar-nav navbar-right">--%>
            <%--            <li class="dropdown"><a href="#" class="dropdown-toggle"--%>
            <%--                                    data-toggle="dropdown" role="button" aria-haspopup="true"--%>
            <%--                                    aria-expanded="false">Status <span class="caret"></span></a>--%>
            <%--                <ul class="dropdown-menu">--%>
            <%--                    <li><a href="${contextRoot}/addstatus">Add Status</a></li>--%>
            <%--                    <li><a href="${contextRoot}/viewstatus">View Status Updates</a></li>--%>
            <%--                </ul></li>--%>
            <%--        </ul>--%>

            <ul class="nav navbar-nav">

                <%--            <li class="nav-item active">--%>
                <%--                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>--%>
                <%--            </li>--%>
                <%--            <li class="nav-item active">--%>
                <%--                <a class="nav-link" href="/about">About</a>--%>
                <%--            </li>--%>


                    <li class="nav-inline">
                        <a class="dropdown-item" href="/">Список лотів</a>

                    </li>
                    <li class="nav-item">
                        <a class="dropdown-item" href="add">Додати лот</a>
                    </li>
                    <li class="nav-item">
                        <a class="dropdown-item" href="search" style="">Пошук лота</a>
                    </li>
                    <li class="nav-item">
                        <a class="dropdown-item" href="statistics" style="">Статистика</a>
                    </li>







            </ul>
        </div>
</nav>


</form>





<%--<div class="navbar-fixed-bottom row-fluid">--%>
<%--    <div class="navbar-inner">--%>
<%--        <div class="container">--%>
<%--            <footer class="page-footer font-small blue">--%>

<%--                <!-- Copyright -->--%>
<%--                <div class="footer-copyright text-right py-3"><br>--%>
<%--                    <br>--%>
<%--&lt;%&ndash;                    © 2020 Copyright:&ndash;%&gt;--%>
<%--                    <br>--%>
<%--                    Канал для связи:--%>
<%--                    <br>--%>
<%--                    <a href="https://inmedical.org/">inmedical.org@gmail.com</a>--%>
<%--                </div>--%>
<%--                <!-- Copyright -->--%>

<%--            </footer>        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<%--</body>--%>
<%--</html>--%>


<%--<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="${contextRoot}/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<div class="container">
    <tiles:insertAttribute name="content" />
</div>

<sec:authorize access="isAuthenticated()">
    <script>
        connectionManager.connect();
    </script>
</sec:authorize>


</body>
</html>