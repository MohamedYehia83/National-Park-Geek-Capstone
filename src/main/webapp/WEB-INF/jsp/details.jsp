<%@include file="common/header.jspf"%>
<body class="detailpageContainer">
	<div class="detailImg">
		<c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
		<img src="${parkImgUrl}" />
	</div>
	<div class="quoteContainer">
		<c:out value=' "${park.inspirationalQuote}" ' />
		<div>
			<c:out value=" - ${park.inspirationalQuoteSource}" />
		</div>
	</div>
		<div>
			<c:out value="${park.parkName}" />
			<span class="foundedYear">
			<c:out value=" was founded in ${park.yearFounded} in ${park.state}." /></span>
		</div>

		<br>
		<div class="parkInfoContainer">

				<span><c:out value="Size" /></span> 
				<span><c:out value="Elevation" /></span> 
				<span><c:out value="Climate" /></span> 
				<span><c:out value="Species Count" /></span> 
				<span><c:out value="Trail Length" /></span>
				<span><c:out value="Visitor Count" /></span> 
				<span><c:out value="Campsites" /></span> 
				<span><c:out value="Entry Fee" /></span>
				<span><c:out value="${park.acreage} acres" /></span> 
				<span><c:out value="${park.elevationInFeet} ft" /></span> 
				<span><c:out value="${park.climate}" /></span> 
				<span><c:out	value="${park.numberOfAnimalSpecies} species" /></span> 
				<span><c:out value="${park.milesOfTrail} miles" /></span> 
				<span><c:out value="${park.annualVisitorCount}" /></span> 
				<span><c:out value="${park.numberOfCampsites} sites" /></span> 
				<span><c:out value="$ ${park.entryFee}.00" /></span>
			
		</div>
		<div>
			<c:out value="More about ${park.parkName }:" />
			<c:out value="${park.parkDescription}" />
		</div>
		<div class="weathercontainer">
		
			<%-- 	<c:out value="${weather.}" />
					<c:out value="${weather.}" />
					<c:out value="${weather.}" />
 --%>
	</div>
</body>






<%@include file="common/footer.jspf"%>