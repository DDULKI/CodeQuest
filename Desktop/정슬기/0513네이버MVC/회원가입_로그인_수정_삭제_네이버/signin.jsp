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
    <title>로그인</title>
    <link rel="stylesheet" href="./css/signup.css">
</head>
<body>
    <div id="wrap">
        <div class="title">
            <a href="http://www.naver.com"></a>
        </div>
        <form name="sign_up" id="signUp" method="post" action="./signin_action.jsp">
            <label for="id">아이디</label>
            <div>
                <input type="text" name="id" id="id">
                <span>@naver.com</span>
            </div>
            <label for="pw">비밀번호</label>
            <div>
                <input type="text" name="pw" id="pw">
            </div>
            <button class="signup" type="submit">로그인</button>
        </form>
    </div>
    
</body>
</html>