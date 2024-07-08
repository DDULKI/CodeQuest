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
    <title>LOGOUT</title>
</head>
<body>
    
    <%
        //로그아웃 : 세션을 삭제
        session.invalidate();
    %>
    <script>
        location.href ='./main.jsp';
    </script>
</body>
</html>