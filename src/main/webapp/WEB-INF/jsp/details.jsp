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
		<c:out value = "${dayOne.farenheit}"/>
			<c:choose>
				<c:when test = "${dayOne.farenheit == 'true' }">
					<c:out value = "Day${dayOne.fiveDayForecastValue }"/>
					<c:out value = "High: ${dayOne.high }F"/>
							<c:out value = "${dayOne.farenheit}"/>
					
					<c:out value = "Low: ${dayOne.low }F"/>
					<c:url var = "weatherURL" value = "/img/weather/${dayOne.forecast }.png"/>
					<img src="${weatherURL }"/>
					<c:choose>
						<c:when test = "${dayOne.forecast == 'rain' }">
							<c:out value = "Wear waterproof shoes!"/>
						</c:when>
						<c:when test = "${dayOne.forecast == 'sunny' }">
							<c:out value = "Pack sunblock to avoid the sun's harmful rays!"/>
						</c:when>
						<c:when test = "${dayOne.forecast == 'thunderstorms' }">
							<c:out value = "Seek shelter and avoid exposed ridges!"/>
						</c:when>
						<c:when test = "${dayOne.forecast == 'snow' }">
							<c:out value = "Pack snowshoes!"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test = "${dayOne.low < 20}">
							<c:out value = "Wear a coat and hat or you will die!"/>
						</c:when>
						<c:when test = "${dayOne.high > 75}">
							<c:out value = "Bring an extra gallon of water!"/>
						</c:when>
						<c:when test = "${(dayOne.high - dayOne.low) > 20 }">
							<c:out value = "Wear breathable layers!"/>
						</c:when>
						<c:otherwise>
							<c:out value ="You picked a good day to visit!"/>
						</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise>
					<c:out value = "Day${dayOne.fiveDayForecastValue }"/>
					<c:out value = "High: ${dayOne.high }C"/>
							<c:out value = "${dayOne.farenheit}"/>
					
					<c:out value = "Low: ${dayOne.low }C"/>
					<c:url var = "weatherURL" value = "/img/weather/${dayOne.forecast }.png"/>
					<img src="${weatherURL }"/>
					<c:choose>
						<c:when test = "${dayOne.forecast == 'rain' }">
							<c:out value = "Wear waterproof shoes!"/>
						</c:when>
						<c:when test = "${dayOne.forecast == 'sunny' }">
							<c:out value = "Pack sunblock to avoid the sun's harmful rays!"/>
						</c:when>
						<c:when test = "${dayOne.forecast == 'thunderstorms' }">
							<c:out value = "Seek shelter and avoid exposed ridges!"/>
						</c:when>
						<c:when test = "${dayOne.forecast == 'snow' }">
							<c:out value = "Pack snowshoes!"/>
						</c:when>
						<c:otherwise>
							<c:out value =" "/>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test = "${dayOne.low < -6}">
							<c:out value = "Wear a coat and hat or you will die!"/>
						</c:when>
						<c:when test = "${dayOne.high > 23}">
							<c:out value = "Bring an extra gallon of water!"/>
						</c:when>
						<c:when test = "${(dayOne.high - dayOne.low) > 12 }">
							<c:out value = "Wear breathable layers!"/>
						</c:when>
						<c:otherwise>
							<c:out value ="You picked a good day to visit!"/>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
			
			
		</div>
		<div class="weather5container">
			
			<c:forEach var = "day" items="${weather}">
			<c:out value = "Day${day.fiveDayForecastValue }"/>
			<c:out value = "High: ${day.high }F"/>
			<c:out value = "Low: ${day.low }F"/>
			<c:url var="weatherURL" value = "/img/weather/${day.forecast}.png"/>	
			<img alt="weather" src="${weatherURL}">		
			</c:forEach>
		</div>
		
		<c:url var = "convert" value = "/details"/>
		<form method = "POST" action="${convert }">
			<input type="text" name=parkCode value = "${park.parkCode }"/>
			<input style="color: white; background-color: blue;" type="submit" value="Convert"/>
		</form>
				
	
</body>






<%@include file="common/footer.jspf"%>