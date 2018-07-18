<%@include file="common/header.jspf"%>
	<div class = "favoriteContainer">
		<c:out value = "how dumb am i?"/>
		<c:forEach var = "favPark" items="${favparks }">
			<c:out value = "very"/>
			<div class = "APark">
				<c:out value = "${favparks.parkName }"/>
				<c:url var="favParkPic" value = "/img/parks/${favparks.parkCode }.jpg"/>
				<img src="${favParkPic }"/>
				
			</div>
		
		</c:forEach>
		
	
	</div>
	
	
	
	

	
<%@include file="common/footer.jspf"%>