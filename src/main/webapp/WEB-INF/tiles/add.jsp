<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="reg">

    <span style="font-size: 28px; color: #6c757d;">Додати лот</span><br>            <br>

    <form:form method="post" modelAttribute="item" class="login-form">

        <form:input type="text" path="name" placeholder="Назва лоту"
                    class="form-control" cssStyle="font-size: 16px;" />
        <br>
        <form:textarea type="text" path="price" placeholder="Ціна"
                       class="form-control" cssStyle="font-size: 16px;" />
        <br>
        <form:input type="text" path="type" placeholder="Тип"
                    class="form-control" cssStyle="font-size: 16px;"/>
        <br>
        <form:input type="phone" path="year" placeholder="Рік"
                    class="form-control" cssStyle="font-size: 16px;"/>
        <br>

        <form:input type="date_b" path="author" placeholder="Автор"
                    class="form-control" cssStyle="font-size: 16px;"/>
        <br>

        <form:textarea type="text" path="link" placeholder="Посилання"
                       class="form-control" cssStyle="font-size: 16px;"/>
        <br>
        <form:checkbox path="sold" value="false"/> Лот продано


<br>
        <br>

        <button type="submit" class="btn-reg">Додати лот</button>



    </form:form>

</div>