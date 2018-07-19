<%@include file="common/header.jspf"%>
		<c:forEach var="fav" items="${favs}">
			<div class = "favPark">
				<c:url var="aboutParkUrl" value="/details?parkCode=${fav.parkCode}" />
				<a href="${aboutParkUrl}"> <c:out value=" ${fav.parkName }" /></a> <span
				class="state"><c:out value=" in ${fav.state }" /></span>
			</div>
			<c:url var="parkImgUrl" value="/img/parks/${fav.parkCode}.jpg" />
			<c:url var="detailUrl" value="/details?parkCode=${fav.parkCode}" />
			<a href="${detailUrl}"> <img src="${parkImgUrl }" /></a>
			</div>
			<div class="descript">
			<c:out value=" ${fav.parkDescription }" />
			</div>
		</c:forEach>

		
	
	
	
	
	

	
<%@include file="common/footer.jspf"%>