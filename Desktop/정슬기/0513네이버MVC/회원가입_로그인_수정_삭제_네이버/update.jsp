<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ page import = "gaib.GaibDAO" %>
<%@ page import = "gaib.GaibDTO" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네이버 수정</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <div id="wrap">

        <%
            String loginId = null;
            if(session.getAttribute("id") !=null){
                loginId = (String)session.getAttribute("id");
            }
        %>

        <%
            GaibDAO gaibDAO = new GaibDAO();
            GaibDTO gaibDTO = gaibDAO.getJoin(loginId);
        %>

        <div class="title">
            <a href="http://www.naver.com"></a>
        </div>
        <form name="sign_up" id="signUp" method="post" action="./update_action.jsp">
            <label for="id">아이디</label>
            <div>
                <%=gaibDTO.getId()%>
                <input class="hide" type="text" name="id" id="id" value="<%=gaibDTO.getId()%>">
                <span>@naver.com</span>
            </div>
            <label for="pw">비밀번호</label>
            <div>
                <input type="text" name="pw" id="pw" value="<%=gaibDTO.getPw()%>">
            </div>
            <label for="pw2">비밀번호 확인</label>
            <div>
                <input type="text" name="pw2" id="pw2" value="<%=gaibDTO.getPw()%>">
            </div>
            <label for="name">이름</label>
            <div>
                <input type="text" name="name" id="name" value="<%=gaibDTO.getName()%>">
            </div>
            <label for="birth_year">생년월일</label>
            <span>
                <div class="birth">
                    <input class="year" type="text" name="birth" id="birthYear" placeholder="년(4자)" value="<%=gaibDTO.getBirth()%>">
                </div>
                <div class="birth">
                    <select class="month" name="birth" id="birthMonth">
                        <option value="월">월</option>
                        <option <% if(gaibDTO.getBirth().equals("1")) {%> checked="checked"<%}%> value="1">1</option>
                        <option <% if(gaibDTO.getBirth().equals("2")) {%> checked="checked"<%}%> value="2">2</option>
                        <option <% if(gaibDTO.getBirth().equals("3")) {%> checked="checked"<%}%> value="3">3</option>
                        <option <% if(gaibDTO.getBirth().equals("4")) {%> checked="checked"<%}%> value="4">4</option>
                        <option <% if(gaibDTO.getBirth().equals("5")) {%> checked="checked"<%}%> value="5">5</option>
                        <option <% if(gaibDTO.getBirth().equals("6")) {%> checked="checked"<%}%> value="6">6</option>
                        <option <% if(gaibDTO.getBirth().equals("7")) {%> checked="checked"<%}%> value="7">7</option>
                        <option <% if(gaibDTO.getBirth().equals("8")) {%> checked="checked"<%}%> value="8">8</option>
                        <option <% if(gaibDTO.getBirth().equals("9")) {%> checked="checked"<%}%> value="9">9</option>
                        <option <% if(gaibDTO.getBirth().equals("10")) {%> checked="checked"<%}%> value="10">10</option>
                        <option <% if(gaibDTO.getBirth().equals("11")) {%> checked="checked"<%}%> value="11">11</option>
                        <option <% if(gaibDTO.getBirth().equals("12")) {%> checked="checked"<%}%> value="12">12</option>
                    </select>
                </div>
                <div class="birth">
                    <input class="day" type="text" name="birth" id="birthDay" placeholder="일">
                </div>
            </span>
            <label for="gender">성별</label>
            <div>
                <select name="gender" id="Gender">
                    <option value="성별">성별</option>
                    <option value="남자" <% if(gaibDTO.getGender().equals("남자")) {%> checked="checked"<%}%>> 남자</option>
                    <option value="여자" <% if(gaibDTO.getGender().equals("여자")) {%> checked="checked"<%}%>> 여자</option>
                    <option value="선택안함" <% if(gaibDTO.getGender().equals("선택안함")){ %> checked="checked"<%}%>>선택안함</option>
                </select>
            </div>
            <label for="email">본인 확인 이메일<span>(선택)</span></label>
            <div>
                <input type="text" name="email" id="Email" placeholder="선택 입력" value="<%=gaibDTO.getEmail()%>">
            </div>
            <label for="hp">휴대전화</label>
            <div>
                <select name="nation" id="nation">
                    <option <% if(gaibDTO.getNation().equals("대한민국 +82")){ %> checked="checked" <%}%> value="대한민국 +82">대한민국 +82</option>
                    <option <% if(gaibDTO.getNation().equals("그리스 +30")){ %> checked="checked" <%}%> value="그리스 +30">그리스 +30</option>
                    <option <% if(gaibDTO.getNation().equals("나이지리아 +234")){ %> checked="checked" <%}%> value="나이지리아 +234">나이지리아 +234</option>
                    <option <% if(gaibDTO.getNation().equals("노르웨이 +47")) { %> checked="checked" <%}%>value="노르웨이 +47">노르웨이 +47</option>
                    <option <% if(gaibDTO.getNation().equals("독일 +49")) { %> checked="checked" <%}%> value="독일 +49">독일 +49</option>
                </select>
            </div>
            <label for="hp"></label>
            <div class="hp">
                <input type="text" class="hp" name="hp" id="hp" placeholder="전화번호 입력" value="<%=gaibDTO.getHp()%>">
                <button class="certification">인증번호 받기</button>
            </div>
            <button class="signup" type="submit">수정하기</button>
        </form>
    </div>
    
</body>
</html>