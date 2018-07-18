<%@include file="common/header.jspf"%>
<div class="detailContainer">
	<div class="parkInfo">
		<div class="detailImg">
			<c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
			<img src="${parkImgUrl}" />
		</div>
		<div class="parkDetailContainer">
			<h3>
				<c:out value="State: " />
				<c:out value="${parks.state}" />
			</h3>
			<h2>
				<c:out value="${parks.parkName}" />
				<span class="foundedYear"><c:out value=" Park Founded: ${park.yearFounded}" /></span>
			</h2>
			
			<h6>
				<c:out
					value="'${parks.inspirationalQuote}' - ${park.inspirationalQuoteSource}" />
			</h6>
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
					<td><c:out value="${parks.acreage}" /></td>
					<td><c:out value="${parks.elevationInFeet}" /></td>
					<td><c:out value="${parks.climate}" /></td>
					<td><c:out value="${parks.numberOfAnimalSpecies}" /></td>
					<td><c:out value="${parks.milesOfTrail}" /></td>
					<td><c:out value="${parks.annualVisitorCount}" /></td>					
					<td><c:out value="${parks.numberOfCampsites}" /></td>
					<td><c:out value="${parks.entryFee}" /></td>
					
				</tr>

			</table>
			<h2>
				<c:out value="About ${parks.parkName }:" />
			</h2>
			<p>
				<c:out value="${parks.parkDescription}" />
			</p>
		</div>
	</div>
	<div class="weatherDiv"></div>
</div>






<%@include file="common/footer.jspf"%>