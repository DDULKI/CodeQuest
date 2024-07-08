<%
    response.setHeader("Access-Control-Allow-Origin","*");
%>

<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ page import = "gaib.GaibDAO" %>

<% request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="gaibDTO" class="gaib.GaibDTO"/>
<jsp:setProperty name="gaibDTO" property="id"/>
<jsp:setProperty name="gaibDTO" property="pw"/>
<jsp:setProperty name="gaibDTO" property="name"/>
<jsp:setProperty name="gaibDTO" property="birth"/>
<jsp:setProperty name="gaibDTO" property="gender"/>
<jsp:setProperty name="gaibDTO" property="email"/>
<jsp:setProperty name="gaibDTO" property="nation"/>
<jsp:setProperty name="gaibDTO" property="hp"/>

<%
    String id =    request.getParameter("id");
    String pw =    request.getParameter("pw");
    String name =  request.getParameter("name");
    String birth = request.getParameter("birth");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    Stirng nation = requset.getParameter("nation");
    String hp     = requset.getParameter("hp");
%>
       
    
<%
    GaibDAO gaibDAO = new GaibDAO();
    int result = gaibDAO.signup(gaibDTO); 
%>
        
{"아이디" : "<%= id%>", "비밀번호" : "<%= pw %>", "이름" : "<%=name%>", "생년월일" : "<%= birth %>", "성별" : "<%= gender%>", "이메일" : "<%=email%>", "국가" : "<%=nation%>", "휴대폰" : "<%=hp%>"}
        