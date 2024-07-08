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
    <title>네이버 회원가입</title>
    <link rel="stylesheet" href="./css/signup.css">
</head>
<body>
    <div id="wrap">
        <div class="title">
            <a href="http://www.naver.com"></a>
        </div>
        <form name="sign_up" id="signUp" method="post" action="./signup_action.jsp">
            <label for="id">아이디</label>
            <div>
                <input type="text" name="id" id="id">
                <span>@naver.com</span>
            </div>
            <label for="pw">비밀번호</label>
            <div>
                <input type="text" name="pw" id="pw">
            </div>
            <label for="pw2">비밀번호 확인</label>
            <div>
                <input type="text" name="pw2" id="pw2">
            </div>
            <label for="name">이름</label>
            <div>
                <input type="text" name="name" id="name">
            </div>
            <label for="birth_year">생년월일</label>
            <span>
                <div class="birth">
                    <input class="year" type="text" name="birth" id="birthYear" placeholder="년(4자)">
                </div>
                <div class="birth">
                    <select class="month" name="birth" id="birthMonth">
                        <option value="월">월</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                </div>
                <div class="birth">
                    <input class="day" type="text" name="birth" id="birthDay" placeholder="월">
                </div>
            </span>
            <label for="gender">성별</label>
            <div>
                <select name="gender" id="Gender">
                    <option value="성별">성별</option>
                    <option value="남자">남자</option>
                    <option value="여자">여자</option>
                    <option value="선택안함">선택안함</option>
                </select>
            </div>
            <label for="email">본인 확인 이메일<span>(선택)</span></label>
            <div>
                <input type="text" name="email" id="Email" placeholder="선택 입력">
            </div>
            <label for="hp">휴대전화</label>
            <div>
                <select name="nation" id="nation">
                    <option value="대한민국 +82">대한민국 +82</option>
                    <option value="그리스 +30">그리스 +30</option>
                    <option value="나이지리아 +234">나이지리아 +234</option>
                    <option value="노르웨이 +47">노르웨이 +47</option>
                    <option value="독일 +49">독일 +49</option>
                </select>
            </div>
            <label for="hp"></label>
            <div class="hp">
                <input type="text" class="hp" name="hp" id="hp" placeholder="전화번호 입력">
                <button class="certification">인증번호 받기</button>
            </div>
            <button class="signup" type="submit">가입하기</button>
        </form>
    </div>
    
</body>
</html>