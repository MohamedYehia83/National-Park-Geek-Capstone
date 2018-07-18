<%@include file="common/header.jspf"%>

<c:forEach var="park" items="${parks}">
	<div class="parkContainer">
		<div class="parkName">
			<c:url var="aboutParkUrl" value="/details?parkCode=${park.parkCode}" />
			<a href="${aboutParkUrl}"> <c:out value=" ${park.parkName }" /></a> <span
				class="state"><c:out value=" in ${park.state }" /></span>
		</div>
		<c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
		<c:url var="detailUrl" value="/details?parkCode=${park.parkCode}" />
		<a href="${detailUrl}"> <img src="${parkImgUrl }" /></a>



		<div class="descript">
			<c:out value=" ${park.parkDescription }" />
		</div>
	</div>
	<br>
	<br>

	</div>
</c:forEach>
</body>

<%@include file="common/footer.jspf"%>