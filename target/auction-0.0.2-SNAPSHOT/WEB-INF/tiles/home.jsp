<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">

<c:if test="${empty itemsList}">
    <span style="font-size: 22px; color: #495057;">Список лотов пока пуст</span>
</c:if>
<c:if test="${!empty itemsList}">



<%--        <span style="color: #495057">Список лотов:</span>--%>
        <br>
    <br>
    <br>
    <br>


<%--                <c:url var="itemsList" value="/item/${itemsList.id}"/>--%>
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
    <c:forEach items="${itemsList}" var="itemsList">

                        <span style="font-size: 14px">
                            <tr>

                               <td style="border-bottom: 2px solid #56433D;">${itemsList.name}</td>
                             <td style="border-bottom: 2px solid #56433D;">${itemsList.type}</td>
                             <td style="border-bottom: 2px solid #56433D;">${itemsList.year}</td>
                             <td style="border-bottom: 2px solid #56433D;">${itemsList.author}</td>
                             <td style="border-bottom: 2px solid #56433D;"><a href="${itemsList.link}">Лінк</a></td>
                             <td style="border-bottom: 2px solid #56433D;">${itemsList.normal_date}</td>
                        <c:if test="${itemsList.sold == false}">
                             <td style="border-bottom: 2px solid #56433D;">Поточна ціна за лот ${itemsList.price} грн</td>
<td>
    <c:url var="rise" value="/rise/${itemsList.id}"/>
                            <form>
                            <button style="background-color: slateblue " formaction="${rise}">Зробити ставку</button>
                                <%--        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>--%>
                        </form>
</td>

                        </c:if>
                        <c:if test="${itemsList.sold == true}">
                            <td style="border-bottom: 2px solid #56433D;"> Продано за ${itemsList.price} грн</td>
                        </c:if>
                                                        </tr>

                        </span>










                        <form>
<%--                            <button class="btn-patients" formaction="${itemsList}">Открыть карточку</button>--%>
                                <%--        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>--%>
                        </form>
                        <br>
                    </div>

                </div>


            </c:forEach>
            </table>

        </div>
</c:if>
