<%@include file="common/header.jspf"%>

	<c:forEach var="park" items="${parks}">
	<div class="parkContainer">
	
			<c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
			<c:url var="detailUrl" value="/details?parkCode=${park.parkCode}" />
			<a href="${detailUrl}"> <img src="${parkImgUrl }" />
			
			</a> <span class="parkName"> <c:url var="aboutParkUrl"
					value="/details?parkCode=${park.parkCode}" /> <a
				href="${aboutParkUrl}"> <c:out value=" ${park.parkName }" /></a> <span
				class="state"><c:out value=" in ${park.state }" /></span>
			</span> <span class="descript"> <c:out
					value=" ${park.parkDescription }" />
			</span>
</div>


</c:forEach>

<%@include file="common/footer.jspf"%>