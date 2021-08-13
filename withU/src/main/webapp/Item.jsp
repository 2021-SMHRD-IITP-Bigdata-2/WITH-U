<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="model.ProfileDTO"%>
<%@page import="model.ItemDAO" %>
<%@page import="model.ItemDTO" %>
<%@page import="java.util.ArrayList"%>

<%
	ProfileDTO profile = (ProfileDTO) session.getAttribute("login_profile");

	ItemDAO i_dao = new ItemDAO();
	
	ArrayList<ItemDTO> i_list = new ArrayList<>();
	
	i_list = i_dao.item_view();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="css/Item.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- header include -->
	<%@ include file = "header.jsp" %>

	<div class="wrap">
		<form action="" method="post">
			<div class="container">
				<div class="favorite-container">
					<div class="favorite-title">
						<strong class="selflike">�ڰ��ݸ�, �Բ��ϸ� ���ƿ�!</strong><br> <br>
						<span class="sublike">�ڰ��ݸ��� �ʿ��� ��ǰ ����, �� �Ⱓ�� �ɽ����� �ʰ� ����
							��ǰ���� �Ұ��մϴ�.<br>
						</span> <span class="sublike">���ã�⸦ ���� ���������������� Ȯ���� �� �־��.</span>
					</div>
				</div>
				<!--------------------------------- Begin Item_list --------------------------------->

				<%
					if (!i_list.isEmpty()) {
						for (int i = 0; i < i_list.size(); i++) {
				%>

				<div class="favorite-item">


					<div class="item-img">
						<p class="pcenter">
							<img class="i-img" src="<%=i_list.get(i).getI_img()%>">
						</p>
					</div>
					<div class="item-name">
						<strong class="i-name"><%=i_list.get(i).getI_name()%></strong> <br>
						<br> <span class="i-review"><%=i_list.get(i).getI_content()%></span>
					</div>
					<div class="favorite-set">
						<div class="button-container like-container">
							<a class="favorite-a"> <i class="fas fa-star"> Like</i>
							</a>
						</div>
					</div>
				</div>
				<%
						}
					}
				%>
				<!--------------------------------- End Item_list --------------------------------->
				
				<!-- ���� ���� ����-->
				<div class="footblank"></div>
			</div>
		</form>
	</div>
	<!-- ---------------------------BEGIN FOOTER--------------------------------->
	<%@ include file="footer.jsp"%>
	<!-- ---------------------------END FOOTER----------------------------------->
	<script>
		$('.like-container > .favorite-a').on('click', function() {
	    	event.preventDefault();
	    	$(this).addClass('active');
		});
	</script>
	
</body>
</html>