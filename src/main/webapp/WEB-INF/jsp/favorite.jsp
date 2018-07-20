<%@include file="common/header.jspf"%>
<div class="topLine">
	<div class="favoriteTitle">
		<c:out value="Most Popular National Parks" />
	</div>
</div>
<div id="favoriteContainer">
	<div id="favParks">
		<c:forEach var="fav" items="${favs}">
			<div id="favoritePark">
				<div class="favParkImg">
					<c:url var="favParkImgUrl" value="/img/parks/${fav.parkCode }.jpg" />
					<img src="${favParkImgUrl }" />
				</div>
				<div class="favParkName">
					<c:out value="${fav.parkName }" />
				</div>
			</div>
		</c:forEach>
	</div>
	<div id="voteCounts">
		<c:forEach var="count" items="${count }">
			<div class="parkVote">
				<c:out value="Votes: ${count}" />
			</div>
		</c:forEach>
	</div>

</div>










<%@include file="common/footer.jspf"%>