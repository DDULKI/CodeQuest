<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ page import = "gaib.GaibDAO"%>
<%@ page import = "gaib.GaibDTO"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 페이지</title>
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/reset.css">
    
</head>
<body>
    <div id="wrap">
        <section id="signup" class="main">
            <div class="container">
                <div class="title">
                    <h2>메인 페이지</h2>
                </div>
                
                <%
                    String loginId = null;
                    if(session.getAttribute("id") != null){
                        loginId = (String) session.getAttribute("id");
                    }
                    if(loginId == null){
                %>
                    <div class="content">
                        <h3>접속하기</h3>
                        <ul>
                            <li><a href="./signin.jsp">로그인</a></li>
                            <li><a href="./signup.jsp">회원가입</a></li>
                        </ul>
                    </div>
                <% 
                    }
                    else {
                %>
                    <div class="content">
                        <h3>회원관리</h3>
                        <h4><%=loginId%> 회원님</h4>
                        <ul>
                            <li><a href="./update.jsp">개인정보수정</a></li>
                            <li><a href="./delete.jsp">회원탈퇴</a></li>
                            <li><a href="./logout.jsp">로그아웃</a></li>
                        </ul>
                    </div>
            </div>

            <div class="get-join-list">
                <table>
                    <caption>회원목록</caption>
                        <tr>
                            <th>아이디</th>
                            <th>비밀번호</th>
                            <th>이름</th>
                            <th>생년월일</th>
                            <th>성별</th>
                            <th>이메일</th>
                            <th>나라</th>
                            <th>연락처</th>
                        </tr>

                <%
                    GaibDAO gaibDAO = new GaibDAO();
                    List<GaibDTO> list = new ArrayList<>();
                    list = gaibDAO.getJoinList();

                    if(list.size()==0){
                        out.println("<script>alert('조회내역이 없습니다.');</script>");
                    }
                    else {
                            for(GaibDTO item : list){
                %>
                            <tr>
                                <td><%=item.getId()%></td>
                                <td><%=item.getPw()%></td>
                                <td><%=item.getName()%></td>
                                <td><%=item.getBirth()%></td>
                                <td><%=item.getGender()%></td>
                                <td><%=item.getEmail()%></td>
                                <td><%=item.getNation()%></td>
                                <td><%=item.getHp()%></td>
                            </tr>
                <%
                            }
                        }
                %>
                
                </table>
         <%
            }
        %>
            </div>
        </section>
    </div>
</body>
</html>