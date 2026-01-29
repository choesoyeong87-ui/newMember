<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>완료 - Blue System</title>
    <style>
        :root { --primary-blue: #007bff; --hover-blue: #0056b3; }
        body {
            font-family: 'Pretendard', sans-serif;
            background-color: #f0f7ff;
            display: flex; justify-content: center; align-items: center;
            height: 100vh; margin: 0;
        }
        .success-card {
            background: white; padding: 50px; border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 123, 255, 0.1);
            width: 100%; max-width: 400px; text-align: center;
        }
        .icon-circle {
            width: 80px; height: 80px; background: var(--primary-blue);
            color: white; font-size: 40px; display: flex;
            justify-content: center; align-items: center;
            border-radius: 50%; margin: 0 auto 25px;
            animation: pop 0.5s ease;
        }
        @keyframes pop { 0% { transform: scale(0); } 100% { transform: scale(1); } }
        
        h2 { color: #333; margin-bottom: 10px; }
        p { color: #666; margin-bottom: 30px; line-height: 1.5; }
        
        .btn-next {
            display: block; width: 100%; padding: 15px;
            background: var(--primary-blue); color: white;
            text-decoration: none; border-radius: 10px;
            font-weight: bold; transition: 0.3s;
        }
        .btn-next:hover { background: var(--hover-blue); transform: translateY(-2px); }
    </style>
</head>
<body>

<div class="success-card">
    <div class="icon-circle">✓</div>
    <h2>${message}</h2>
   
    
    <a href="/member/loginForm" class="btn-next">로그인하기</a>
</div>

</body>
</html>