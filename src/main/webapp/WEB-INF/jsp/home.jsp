<%@include file="common/header.jspf"%>

<c:forEach var="parks" items="${parks }">
	<div class="parkContainer">
		<c:url var="parkImgUrl" value="/img/parks/${parks.parkCode}.jpg" />
		<c:url var="detailUrl" value="/details?parkscode=${parks.parkCode}" />
		<a href="${detailUrl}"> <img src="${parkImgUrl }" /></a>
	</div>
</c:forEach>
</body>

<%@include file="common/footer.jspf"%>