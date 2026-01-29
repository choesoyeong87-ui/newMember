<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원 정보 수정 - Blue System</title>
    <style>
        :root { --main-blue: #007bff; --hover-blue: #0056b3; }
        body {
            font-family: 'Pretendard', sans-serif;
            background-color: #f0f7ff;
            display: flex; justify-content: center; align-items: center;
            min-height: 100vh; margin: 0;
        }
        .update-container {
            background: white; width: 100%; max-width: 450px;
            padding: 40px; border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 86, 179, 0.1);
        }
        h2 { color: var(--main-blue); text-align: center; margin-bottom: 25px; }
        
        /* 검색 영역 강조 */
        .search-section {
            background-color: #f8fbff;
            padding: 20px;
            border-radius: 12px;
            border: 1px solid #e1e8ef;
            margin-bottom: 25px;
        }
        
        .form-group { margin-bottom: 15px; }
        .form-group label {
            display: block; font-size: 13px; color: #555;
            margin-bottom: 6px; font-weight: 600;
        }
        .form-group input {
            width: 100%; padding: 12px;
            border: 2px solid #e1e8ef; border-radius: 8px;
            box-sizing: border-box; outline: none; transition: 0.3s;
        }
        .form-group input:focus { border-color: var(--main-blue); }

        .btn-submit {
            width: 100%; padding: 14px;
            background-color: var(--main-blue); color: white;
            border: none; border-radius: 8px; font-size: 16px;
            font-weight: bold; cursor: pointer; transition: 0.3s;
        }
        .btn-submit:hover { background-color: var(--hover-blue); }
        
        .info-text { font-size: 12px; color: #888; margin-top: 5px; }
    </style>
</head>
<body>

<div class="update-container">
    <h2>회원 정보 수정</h2>
    
    <form action="/member/update" method="post">
        <div class="search-section">
            <div class="form-group" style="margin-bottom: 0;">
                <label>수정할 대상 아이디 (ID)</label>
                <input type="text" name="id" placeholder="정보를 변경할 회원의 ID를 입력하세요" required>
                <p class="info-text">* 입력하신 아이디를 기준으로 정보를 업데이트합니다.</p>
            </div>
        </div>

        <div class="form-group">
            <label for="name">새로운 이름</label>
            <input type="text" id="name" name="name" placeholder="변경할 이름을 입력하세요" required>
        </div>

        <div class="form-group">
            <label for="pw">새로운 비밀번호</label>
            <input type="password" id="pw" name="pw" placeholder="변경할 비밀번호를 입력하세요" required>
        </div>

        <button type="submit" class="btn-submit">회원 정보 업데이트</button>
    </form>
    
    <div style="text-align: center; margin-top: 20px;">
        <a href="/member/list" style="color: #aaa; text-decoration: none; font-size: 13px;">목록으로 돌아가기</a>
    </div>
</div>

</body>
</html>