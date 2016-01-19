<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</head>
<body>
<h2>가입자 목록</h2>
<table style="border:1px solid #ccc">
    <colgroup>
        <col width="10%"/>
        <col width="10%"/>
        <col width="10%"/>
        <col width="10%"/>
        <col width="10%"/>
        <col width="10%"/>
        <col width="10%"/>
        <col width="10%"/>
        <col width="10%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">글번호</th>
            <th scope="col">이름</th>
            <th scope="col">id코드</th>
            <th scope="col">나이</th>
            <th scope="col">이메일</th>
            <th scope="col">액세스토큰</th>
            <th scope="col">성별</th>
            <th scope="col">작성시간</th>
            <th scope="col">수정시간</th>
        </tr>
    </thead>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list }" var="row">
                    <tr>
                        <td>${row.idx }</td>
                        <td>${row.us_name }</td>
                        <td>${row.us_idcode }</td>
                        <td>${row.age }</td>
                        <td>${row.email }</td>
                        <td>${row.accessToken }</td>
                        <td>${row.gender }</td>
                        <td>${row.writetime }</td>
                        <td>${row.modifytime }</td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="9">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
         
    </tbody>
</table>
</body>
</html>