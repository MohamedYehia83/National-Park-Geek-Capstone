<%@include file="common/header.jspf"%>
		<c:out value = "how dumb am i             k;afdks?"/>
		<c:forEach var="fav" items="${favs}">
			<div class = "favPark">
				<c:out value ="${fav.parkName }"/>
			</div>
		</c:forEach>

		
	
	
	
	
	

	
<%@include file="common/footer.jspf"%>