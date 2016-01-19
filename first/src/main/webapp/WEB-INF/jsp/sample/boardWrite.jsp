<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<form id="frm">
		<table class="board_view">
			<colgroup>
				<col width="30%">
				<col width="*" />
			</colgroup>
			<caption>게시글 작성</caption>
			<tbody>
			
			us_name,
                us_idcode,
                age,
                email,
                accessToken,
                gender,
                
                
				<tr>
					<th scope="row">이름</th>
					<td><input type="text" id="us_name" name="us_name" class="wdp_70"></input></td>
				</tr>
				<tr>
					<th scope="row">id코드</th>
					<td><input type="text" id="us_idcode" name="us_idcode" class="wdp_70"></input></td>
				</tr>
				<tr>
					<th scope="row">나이</th>
					<td><input type="text" id="age" name="age" class="wdp_70"></input></td>
				</tr>
				<tr>
					<th scope="row">이메일</th>
					<td><input type="text" id="email" name="email" class="wdp_70"></input></td>
				</tr>
				<tr>
					<th scope="row">액세스토큰</th>
					<td><input type="text" id="accessToken" name="accessToken" class="wdp_70"></input></td>
				</tr>
				<tr>
					<th scope="row">성별</th>
					<td><input type="text" id="gender" name="gender" class="wdp_70"></input></td>
				</tr>
			</tbody>
		</table>

		<a href="#this" class="btn" id="write">작성하기</a> <a href="#this"
			class="btn" id="list">목록으로</a>
	</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
    $(document).ready(function(){
        $("#list").on("click", function(e){//목록으로 버튼
            e.preventDefault();
            fn_openBoardList();
        });     
        
        $("#write").on("click", function(e){ //작성하기 버튼
            e.preventDefault();
            fn_insertBoard();
        });
        
    });
     
    function fn_openBoardList(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
        comSubmit.submit();
    }
    
    function fn_insertBoard(){
        var comSubmit = new ComSubmit("frm");
        comSubmit.setUrl("<c:url value='/sample/insertBoard.do' />");
        comSubmit.submit();
    }
    
    </script>
</body>
</html>