<%@include file="common/header.jspf"%>
<div class = "favoriteContainer">
<c:forEach var="fav" items="${favs}">
	<div class = "favoritePark">
		<div class = "favParkImg">
			<c:url var="favParkImgUrl" value="/img/parks/${fav.parkCode }.jpg"/>
			<img src="${favParkImgUrl }"/>
		</div>
		<div class="favParkName">
			<c:out value="${fav.parkName }"/>
		</div>
	</div>
</c:forEach>

</div>
		

		
	
	
	
	
	

	
<%@include file="common/footer.jspf"%>