<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">

<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
<c:if test="${empty result}">
    <span style="font-size: 22px; color: #495057;">Нічого не знайдено</span>
</c:if>
<c:if test="${!empty result}">


    <table>
        <tr>
            <td style="padding: 10px;
    font-size: 16px;
    text-align: center;
    border-top: 2px solid #56433D;
    border-bottom: 2px solid #56433D;
    border-right: 2px solid #56433D;
border-left: 2px solid #56433D;">Назва</td>
            <td style="padding: 10px;
    font-size: 16px;
    text-align: center;
    border-top: 2px solid #56433D;
    border-bottom: 2px solid #56433D;
    border-right: 2px solid #56433D;
border-left: 2px solid #56433D;">Тип</td>
            <td style="padding: 10px;
    font-size: 16px;
    text-align: center;
    border-top: 2px solid #56433D;
    border-bottom: 2px solid #56433D;
    border-right: 2px solid #56433D;
border-left: 2px solid #56433D;">Рік</td>
            <td style="padding: 10px;
    font-size: 16px;
    text-align: center;
    border-top: 2px solid #56433D;
    border-bottom: 2px solid #56433D;
    border-right: 2px solid #56433D;
border-left: 2px solid #56433D;">Автор</td>
            <td style="padding: 10px;
    font-size: 16px;
    text-align: center;
    border-top: 2px solid #56433D;
    border-bottom: 2px solid #56433D;
    border-right: 2px solid #56433D;">Посилання</td>
            <td style="padding: 10px;
    font-size: 16px;
    text-align: center;
    border-top: 2px solid #56433D;
    border-bottom: 2px solid #56433D;
    border-right: 2px solid #56433D;">Дата добавлення</td>
            <td style="padding: 10px;
    font-size: 16px;
    text-align: center;
    border-top: 2px solid #56433D;
    border-bottom: 2px solid #56433D;
    border-right: 2px solid #56433D;">Ціна/стан лоту</td>



        </tr>
        <br>
            <c:forEach items="${result}" var="result">
                <%--                <c:url var="itemsList" value="/item/${itemsList.id}"/>--%>
                <span style="font-size: 14px">
                            <tr>

                               <td style="border-bottom: 2px solid #56433D;">${result.name}</td>
                             <td style="border-bottom: 2px solid #56433D;">${result.type}</td>
                             <td style="border-bottom: 2px solid #56433D;">${result.year}</td>
                             <td style="border-bottom: 2px solid #56433D;">${result.author}</td>
                             <td style="border-bottom: 2px solid #56433D;"><a href="${result.link}">Лінк</a></td>
                             <td style="border-bottom: 2px solid #56433D;">${result.normal_date}</td>
                                                    <td style="border-bottom: 2px solid #56433D;">${result.price}</td>

                                                        </tr>

                        </span>










                <form>

                </form>
                <br>
                </div>

                </div>


            </c:forEach>
        </div>





    </div>
    </div>

    </div>
</c:if>
