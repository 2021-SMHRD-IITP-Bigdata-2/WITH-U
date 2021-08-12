<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="model.MemberDTO" %>
<%
	MemberDTO member = (MemberDTO)session.getAttribute("login_member");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
</head>
<body>
	<!-- ---------------------------BEGIN HEADER--------------------------------->
	<%@ include file = "header.jsp" %>
	<!-- ---------------------------END HEADER----------------------------------->

	<!-- ---------------------------BEGIN CONTENT--------------------------------->
	 <div class="container">
        <div class="qcontainer">
            <div class="question">
                <p class="qulist">그날 이야기를 들은 당신의 생각은?</p>
            </div>
            <div class="btn">
                <table class="btntable">
                    <tr>
                        <td class="leftblank">　</td>
                        <td>
                            <button type="submit" class="ansbtn"><a class= "href" href="qustion.html">질문에 답하기</a></button>
                        </td>
                        <td>
                            <button type="submit" class="wrbtn"><a class= "href" href="">다이어리 쓰기</a></button>
                        </td>
                        <td class="rightblank">　</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="postcontainer">
            <div class="hr">
                <div class="member">
                    <img class = "memberImg"src="images/profile.jpg">
                    <strong class="nick">닉네임</strong>
                    <strong class="date">21.08.04 Wed 16:50</strong>
                </div>
            </div>
            <div class="boardTitle">
                <span class="btitle"> 오늘은 소나기가 엄청 내린날</span>
            </div>
            <div class="board">
                <p class="write">게시글 적은 내용이 나옵니다</p>
            </div>
            <div class="re">
                <div class = "rewrite">
                    <input class ="rewriter" type="text" placeholder="댓글을 입력하세요">
                    <button type="submit" class="confirm"><a class= "href" href="">등록</a></button>
                </div>
                <div class="seere">
                        <strong class="renick">닉네임</strong>
                        <strong class="review">이거 되는거 맞죠?</strong>
                    </ul>
                </div>
            </div>
        </div>
        <div class="postcontainer">
            <div class="member">
                <img class = "memberImg"src="images/profile.jpg">
                <strong class="nick">닉네임</strong>
                <strong class="date">21.08.04 Wen 16:50</strong>
            </div>
            <div class="boardTitle">
                <span class="btitle"> 오늘은 소나기가 엄청 내린날</span>
            </dir>
            <div class="boardimg">
                <p class="imgs">
                    <img class="bimg" src="images/diary_img.jpg">
                </p>
            </div>
            <div class="board">
                <p class="write">게시글 적은 내용이 나옵니다</p>
            </div>
            <div class="re">
                <div class = "rewrite">
                    <input class ="rewriter" type="text" placeholder="댓글을 입력하세요">
                    <button type="submit" class="confirm"><a class= "href" href="">등록</a></button>
                </div>
                <div class="seere">
                        <strong class="renick">닉네임</strong>
                        <strong class="review">이거 되는거 맞죠?</strong>
                </div>
            </div>
        </div>
    </div>
    <div class="footblank"></div>
    </div>
	<!-- ---------------------------END CONTENT----------------------------------->

	<!-- ---------------------------BEGIN FOOTER--------------------------------->
	<%@ include file = "footer.jsp" %>
	<!-- ---------------------------END FOOTER----------------------------------->

</body>
</html>