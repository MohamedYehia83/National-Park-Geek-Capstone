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
	<form method="POST" action="${newSurveyUrl }" modelAttribute="survey">
		
		
	<h2><strong>Fill A Survey</strong></h2>	
		
	<div>
		<form:label for="Favorite National Park">Favorite National Park</form:label>
		<select name="park" id="park">
			<c:forEach var="park" items="${parks}">
			<option value="${park.parkName}"> ${park.parkName }</option>
		</c:forEach>
		</select>
		
	</div><br>
		
		<div>
		
		
		<form:label path="Your email">Your email</form:label>
		
		<input type="text" name="mail"><br>
	
		
	</div><br>
	
	<div>
		<form:label for="State Of residence">State Of residence</form:label>
		<select name="park" id="park">
			<c:forEach var="park" items="${parks}">
			<option value="${park.state}"> ${park.state}</option>
		</c:forEach>
		</select>
	</div><br>

	<div>
		<form:label for="Activity level"> Activity level </form:label>
		<select name="survey_result" id="survey_result">
			<c:forEach var="survey_result" items="${survey_result}">
			<option value="${survey_result.activityLevel}">${survey_result.activityLevel}</option>
		</c:forEach>
		</select>
	</div><br>

	
	<div>
		<input style="color: white; background-color: blue;" type="submit" value="Submit"/>
	</div>
	</form>
</section>
</body>

<%@include file="common/footer.jspf"%>
</html>
	
	
	

	
