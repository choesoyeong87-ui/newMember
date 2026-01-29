<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 - Blue Style</title>
    <style>
        :root {
            --primary-blue: #007bff;
            --hover-blue: #0056b3;
            --bg-light-blue: #f0f7ff;
        }

        body {
            font-family: 'Pretendard', sans-serif;
            background-color: var(--bg-light-blue);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .signup-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 123, 255, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            color: var(--primary-blue);
            margin-bottom: 30px;
            font-weight: 800;
        }

        .input-group {
            margin-bottom: 18px;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #444;
            font-size: 14px;
        }

        .input-group input {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e1e8ef;
            border-radius: 10px;
            box-sizing: border-box;
            transition: all 0.3s ease;
            outline: none;
        }

        /* 입력창 포커스 시 파란색 강조 */
        .input-group input:focus {
            border-color: var(--primary-blue);
            background-color: #fbfffe;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.15);
        }

        /* 읽기 전용 회원번호 스타일 */
        .input-group input[readonly] {
            background-color: #f8f9fa;
            color: #999;
            cursor: not-allowed;
        }

        .signup-btn {
            width: 100%;
            padding: 15px;
            background-color: var(--primary-blue);
            border: none;
            border-radius: 10px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            margin-top: 10px;
        }

        .signup-btn:hover {
            background-color: var(--hover-blue);
            transform: translateY(-1px);
        }

        .footer-text {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

        .footer-text a {
            color: var(--primary-blue);
            text-decoration: none;
            font-weight: bold;
        }

        .footer-text a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2>회원가입</h2>
    <form action="/member/insert" method="post">
       
        <div class="input-group">
            <label for="id">아이디 (ID)</label>
            <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" required>
        </div>
        <div class="input-group">
            <label for="pw">비밀번호 (PW)</label>
            <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요" required>
        </div>
        <div class="input-group">
            <label for="name">이름 (Name)</label>
            <input type="text" id="name" name="name" placeholder="성함을 입력하세요" required>
        </div>
        <button type="submit" class="signup-btn">가입하기</button>
    </form>
    <p class="footer-text">이미 계정이 있으신가요? <a href="/login">로그인</a></p>
</div>

</body>
</html>