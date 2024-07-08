<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네이버 회원삭제</title>
    <link rel="stylesheet" href="./css/signup.css">
</head>
<body>
    <div id="wrap">
        <%
            String loginId = null;
            if(session.getAttribute("id")!=null){
                loginId = (String) session.getAttribute("id");
            }
        %>


        <div class="title">
            <a href="http://www.naver.com"></a>
        </div>
        <form name="sign_up" id="signUp" method="post" action="./delete_action.jsp">
            <label for="id">아이디</label>
            <div>
                <input type="text" name="id" id="id">
                <span>@naver.com</span>
            </div>
            <label for="name">이름</label>
            <div>
                <input type="text" name="name" id="name">
            </div>
            <button class="signup" type="submit">탈퇴하기</button>
        </form>
    </div>
    
</body>
</html>