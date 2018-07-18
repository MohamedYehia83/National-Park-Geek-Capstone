<%@include file="common/header.jspf"%>
	
	<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>National Park Geek Survay</title>
    <c:url value="/css/style.css" var="cssHref" />
    <link rel="stylesheet" href="${cssHref}">
</head>

<body>
	
    <header>

        <h1>National Park Geek Survay</h1>
  
    </header>
 
<section>
	
	
	<c:url var="newSurveyUrl" value="/newSurvey"/>
	<form:form method="POST" action="${newSurveyUrl }" modelAttribute="survey">
		
		
	<h2><strong>Fill A Survey</strong></h2>	
		
	<div>
		<form:label path="Favorite National Park">Favorite National Park</form:label>
		<select>
			<c:forEach var="park" items="${parks}">
			<option><c:url var="aboutParkUrl" value="/park?parkCode=${park.parkCode}" />
			<a href="${aboutParkUrl}"> <c:out value=" ${park.parkName }" /></a></option>
		</c:forEach>
		
		</select>
		
	</div><br>
		
		<div>
		<form:label path="Your email">Your email</form:label>
		<form:input path="email" placeholder="Your email"/>
		<form:errors path="email" cssClass="email"/>
		
	</div><br>
	
	<div>
		<form:label path="State Of residence">State Of residence</form:label>
		<select>
			<c:forEach var="park" items="${parks}">
			<option><c:url var="aboutParkUrl" value="/park?parkCode=${park.parkCode}" />
			<a href="${aboutParkUrl}"> <c:out value=" ${park.parkName }" /></a></option>
		</c:forEach>
		</select>
	</div><br>

	<div>
		<form:label path="Activity level"> Activity level </form:label>
		<select>
			<c:forEach var="park" items="${parks}">
			<option><c:url var="aboutParkUrl" value="/park?parkCode=${park.parkCode}" />
			<a href="${aboutParkUrl}"> <c:out value=" ${park.parkName }" /></a></option>
		</c:forEach>
		</select>
	</div><br>

	
	<div>
		<input style="color: white; background-color: blue;" type="submit" value="Submit"/>
	</div>
	</form:form>
</section>
</body>

<%@include file="common/footer.jspf"%>
</html>
	
	
	

	
