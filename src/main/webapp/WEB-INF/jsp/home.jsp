<%@include file="common/header.jspf"%>
<section id="homepage">
	<c:forEach var="park" items="${parks}">
		<c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
		<c:url var="detailUrl" value="/details?parkCode=${park.parkCode}" />
		<a href="${detailUrl}"> <img class="parkpic" src="${parkImgUrl }" />
		</a>

		<section id="parkInfo">
			<c:url var="aboutParkUrl" value="/details?parkCode=${park.parkCode}" />
			<a href="${aboutParkUrl}"> 
			<span class="parkName"><c:out value=" ${park.parkName }" /> </span>
			</a> 
			<span class="parkState"><c:out value=" in ${park.state }" /> </span>
			<span class="parkDesc"> <c:out value=" ${park.parkDescription }" /></span>
		</section>
		
	</c:forEach>
</section>


<%@include file="common/footer.jspf"%>