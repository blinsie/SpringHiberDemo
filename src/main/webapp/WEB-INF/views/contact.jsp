<%@ page language="java" contextType="text'html;charset=utf8"
        pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://wwwspringframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <html>
    <head>
        <meta http-equiv="Content-Type" content="tezt/html; charset=utf8">
        <title><spring:message code="label.title" /></title>
    </head>
    <body>
        <a href="<c:url value="/logout" />">
            <spring:message code="label.logout" />
        </a>

        <h2><spring:message code="label.title"/></h2>

        <form:form method="post" action="add" commandName="contact">

            <table>
                <tr>
                    <td><form:label path="firstName">
                        <spring:message code="label.firstName"/>
                    </form:label></td>
                    <td><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td><form:label path="lastName">
                        <spring:message code="label.lastName"/>
                    </form:label></td>
                    <td><form:input path="lastName"/></td>
                </tr>
                    <td><form:label path="email">
                        <spring:message code="label.email"/>
                    </form:label></td>
                    <td><form:input path="email"/></td>
                </tr>
                <tr>
                    <td><form:label path="telephone">
                        <spring:message code="label.telephone"/>
                    </form:label></td>
                    <td><form:input path="telephone"/></td>
                </tr>
            </table>
        </form:form>

        <h3><spring:message code="label.contacts"/></h3>
        <c:if test="${!empty contactList}">
            <table class="data">
                <tr>
                    <th><spring:message code="label.firstName"/></th>
                    <th><spring:message code="label.email"/></th>
                    <th><spring:message code="label.telephone"</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach items="${contactList}" var="contact">
                    <tr>
                        <td>${contact.lastName}, ${contact.firstName}</td>
                        <td>${contact.email}</td>
                        <td>${contact.telephone}</td>
                        <td><a href="delete/${contact.id}">
                            <spring:message code="label.delete"/></a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </body>
 </html>