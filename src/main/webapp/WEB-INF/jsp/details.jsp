<%@include file="common/header.jspf"%>
<div class="detailContainer">
		<div class="detailImg">
			<c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
			<img src="${parkImgUrl}" />
		</div>
		<div class ="quote">
				<c:out
					value="'${park.inspirationalQuote}' from ${park.inspirationalQuoteSource}" />
			</div>
		<div class="parkDetailContainer">
			<h4>
				<c:out value="${park.parkName}" />
				<span class="foundedYear"><c:out value=" Park Founded: ${park.yearFounded}" /></span>
			</h4>
			<h3>
				<c:out value=" in  " />
				<c:out value="${park.state}" />
			</h3>
			
			
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
					<td><c:out value="${parks.milesOfTrail}" /></td>
					<td><c:out value="${parks.annualVisitorCount}" /></td>					
					<td><c:out value="${parks.numberOfCampsites}" /></td>
					<td><c:out value="${parks.entryFee}" /></td>
				</tr>

			</table>
			<h2>
				<c:out value="More about ${parks.parkName }:" />
			</h2>
			<p>
				<c:out value="${parks.parkDescription}" />
			</p>
		</div>
</div>






<%@include file="common/footer.jspf"%>