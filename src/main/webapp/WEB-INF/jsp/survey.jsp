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
			<option value="${park.parkCode}"> ${park.parkName }</option>
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
			<option value="AL">Alabama</option>
			<option value="AK">Alaska</option>
			<option value="AZ">Arizona</option>
			<option value="AR">Arkansas</option>
			<option value="CA">California</option>
			<option value="CO">Colorado</option>
			<option value="CT">Connecticut</option>
			<option value="DE">Delaware</option>
			<option value="DC">District Of Columbia</option>
			<option value="FL">Florida</option>
			<option value="GA">Georgia</option>
			<option value="HI">Hawaii</option>
			<option value="ID">Idaho</option>
			<option value="IL">Illinois</option>
			<option value="IN">Indiana</option>
			<option value="IA">Iowa</option>
			<option value="KS">Kansas</option>
			<option value="KY">Kentucky</option>
			<option value="LA">Louisiana</option>
			<option value="ME">Maine</option>
			<option value="MD">Maryland</option>
			<option value="MA">Massachusetts</option>
			<option value="MI">Michigan</option>
			<option value="MN">Minnesota</option>
			<option value="MS">Mississippi</option>
			<option value="MO">Missouri</option>
			<option value="MT">Montana</option>
			<option value="NE">Nebraska</option>
			<option value="NV">Nevada</option>
			<option value="NH">New Hampshire</option>
			<option value="NJ">New Jersey</option>
			<option value="NM">New Mexico</option>
			<option value="NY">New York</option>
			<option value="NC">North Carolina</option>
			<option value="ND">North Dakota</option>
			<option value="OH">Ohio</option>
			<option value="OK">Oklahoma</option>
			<option value="OR">Oregon</option>
			<option value="PA">Pennsylvania</option>
			<option value="RI">Rhode Island</option>
			<option value="SC">South Carolina</option>
			<option value="SD">South Dakota</option>
			<option value="TN">Tennessee</option>
			<option value="TX">Texas</option>
			<option value="UT">Utah</option>
			<option value="VT">Vermont</option>
			<option value="VA">Virginia</option>
			<option value="WA">Washington</option>
			<option value="WV">West Virginia</option>
			<option value="WI">Wisconsin</option>
			<option value="WY">Wyoming</option>
		</select>
	</div><br>

	<div>
		<form:label for="Activity level"> Activity level </form:label>
		<select name="survey_result" id="survey_result">
			<option value="Inactive">Inactive</option>
			<option value="Sedentary">Sedentary</option>
			<option value="Active">Active</option>
			<option value="Extremely Active">Extremely Active</option>
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
	
	
	

	
