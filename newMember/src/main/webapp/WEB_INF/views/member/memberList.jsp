<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="member-list-container">
    <style>
        :root {
            --primary-blue: #007bff;
            --dark-blue: #0056b3;
            --soft-blue: #f0f7ff;
            --border-color: #dee2e6;
        }

        .member-list-container {
            font-family: 'Pretendard', sans-serif;
            max-width: 1000px;
            margin: 20px auto;
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 86, 179, 0.1);
        }

        /* 헤더 섹션 */
        .list-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
            padding-bottom: 15px;
            border-bottom: 2px solid var(--soft-blue);
        }

        .list-header h2 {
            color: var(--primary-blue);
            margin: 0;
            font-size: 24px;
        }

        /* 검색 영역 */
        .search-form {
            display: flex;
            gap: 10px;
        }

        .search-form select, .search-form input {
            padding: 10px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            outline: none;
        }

        .search-form input:focus {
            border-color: var(--primary-blue);
        }

        .btn-search {
            padding: 10px 20px;
            background-color: var(--primary-blue);
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-search:hover {
            background-color: var(--dark-blue);
        }

        /* 테이블 스타일 */
        .member-table {
            width: 100%;
            border-collapse: collapse;
            text-align: center;
        }

        .member-table thead tr {
            background-color: var(--primary-blue);
            color: white;
        }

        .member-table th {
            padding: 15px;
            font-weight: 500;
        }

        .member-table td {
            padding: 15px;
            border-bottom: 1px solid var(--soft-blue);
            color: #444;
        }

        .member-table tbody tr:hover {
            background-color: var(--soft-blue);
        }

        /* 버튼 스타일 */
        .btn-action {
            padding: 6px 12px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 13px;
            font-weight: 600;
            border: 1px solid var(--primary-blue);
            color: var(--primary-blue);
            transition: 0.3s;
        }

        .btn-action:hover {
            background-color: var(--primary-blue);
            color: white;
        }

        .id-highlight {
            color: var(--primary-blue);
            font-weight: bold;
        }
    </style>

    <div class="list-header">
        <h2>회원 목록 조회</h2>
        <form action="/member/search" method="get" class="search-form">
            <select name="type">
                <option value="id">아이디</option>
                <option value="name">이름</option>
            </select>
            <input type="text" name="keyword" placeholder="검색어를 입력하세요">
            <button type="submit" class="btn-search">조회</button>
        </form>
    </div>

    <table class="member-table">
        <thead>
            <tr>
                <th>번호</th>
                <th>아이디</th>
                <th>이름</th>
                <th>비밀번호</th>
                <th>관리</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="m" items="${memberList}">
                <tr>
                    <td>${m.no}</td>
                    <td><span class="id-highlight">${m.id}</span></td>
                    <td>${m.name}</td>
                    <td style="color: #ccc;">••••••</td>
                    <td>
                        <a href="/member/edit/${m.no}" class="btn-action">수정</a>
                    </td>
                </tr>
            </c:forEach>
            
            <c:if test="${empty memberList}">
                <tr>
                    <td colspan="5" style="padding: 50px; color: #999;">회원 정보가 존재하지 않습니다.</td>
                </tr>
            </c:if>
        </tbody>
    </table>
</div>
</body>
</html>