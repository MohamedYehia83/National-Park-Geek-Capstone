<%@include file="common/header.jspf"%>
<div class="detailContainer">
	<div class="detailImg">
		<c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
		<img src="${parkImgUrl}" />
	</div>
	<div class="quoteContainer">
		<c:out value=' "${park.inspirationalQuote}" '/>
		<div><c:out value=" - ${park.inspirationalQuoteSource}" /></div> 
	</div>
	<div class="parkDetailContainer">
		<h4>
			<c:out value="${park.parkName}" />
			<span class="foundedYear"><c:out
					value=" was founded in ${park.yearFounded} in ${park.state}." /></span>
		</h4>

		<br>
		<table class="parkInfo">
			<tr>
				<th><c:out value="Acreage" /></th>
				<th><c:out value="Elevation" /></th>
				<th><c:out value="Climate" /></th>
				<th><c:out value="# of Species" /></th>
				<th><c:out value="Miles of Trail" /></th>
				<th><c:out value="Ann. Visitor Count" /></th>
				<th><c:out value="# of Campsites" /></th>
				<th><c:out value="Entry Fee" /></th>

			</tr>
			<tr>
				<td><c:out value="${park.acreage}" /></td>
				<td><c:out value="${park.elevationInFeet}" /></td>
				<td><c:out value="${park.climate}" /></td>
				<td><c:out value="${park.numberOfAnimalSpecies}" /></td>
				<td><c:out value="${park.milesOfTrail}" /></td>
				<td><c:out value="${park.annualVisitorCount}" /></td>
				<td><c:out value="${park.numberOfCampsites}" /></td>
				<td><c:out value="$ ${park.entryFee}" /></td>
			</tr>

		</table>
		<h2>
			<c:out value="More about ${park.parkName }:" />
		</h2>
		<div>
			<c:out value="${park.parkDescription}" />
		</div>
		<div class="weathercontainer">
<%-- 				<c:out value="${weather.}" />
					<c:out value="${weather.}" />
					<c:out value="${weather.}" />
 --%>		</div>
	</div>
</div>






<%@include file="common/footer.jspf"%>