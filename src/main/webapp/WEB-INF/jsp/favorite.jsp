<%@include file="common/header.jspf"%>
		<c:out value = "how dumb am i?"/>
		<c:forEach var = "favPark" items="${favoriteParks }">
			<c:out value = "very"/>
			<div class = "APark">
				<c:out value = "${favPark.parkName }"/>
				<c:url var="favParkPic" value = "/img/parks/${favPark.parkCode }.jpg"/>
				<img src="${favParkPic }"/>
			</div>
		
		</c:forEach>
		
	
	
	
	
	

	
<%@include file="common/footer.jspf"%>