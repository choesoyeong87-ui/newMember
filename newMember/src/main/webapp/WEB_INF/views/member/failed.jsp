<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>오류 발생 - System Error</title>
    <style>
        :root { --error-red: #ff4d4d; --hover-red: #e60000; }
        body {
            font-family: 'Pretendard', sans-serif;
            background-color: #fff5f5; /* 연한 핑크빛 배경 */
            display: flex; justify-content: center; align-items: center;
            height: 100vh; margin: 0;
        }
        .error-card {
            background: white; padding: 50px; border-radius: 20px;
            box-shadow: 0 10px 30px rgba(255, 77, 77, 0.1);
            width: 100%; max-width: 400px; text-align: center;
        }
        .icon-circle {
            width: 80px; height: 80px; background: var(--error-red);
            color: white; font-size: 40px; display: flex;
            justify-content: center; align-items: center;
            border-radius: 50%; margin: 0 auto 25px;
            animation: shake 0.5s ease; /* 실패 시 흔들리는 효과 */
        }
        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }
        
        h2 { color: #333; margin-bottom: 10px; }
        p { color: #888; margin-bottom: 30px; line-height: 1.5; font-size: 15px; }
        
        .btn-retry {
            display: block; width: 100%; padding: 15px;
            background: var(--error-red); color: white;
            text-decoration: none; border-radius: 10px;
            font-weight: bold; transition: 0.3s;
            border: none; cursor: pointer;
        }
        .btn-retry:hover { background: var(--hover-red); transform: translateY(-2px); }
        
        .btn-back {
            display: inline-block; margin-top: 15px;
            color: #aaa; font-size: 13px; text-decoration: none;
        }
        .btn-back:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="error-card">
    <div class="icon-circle">!</div>
    <h2>${message}</h2>
   
    
    <a href="javascript:history.back();" class="btn-back">이전 페이지로 돌아가기</a>
</div>

</body>
</html>