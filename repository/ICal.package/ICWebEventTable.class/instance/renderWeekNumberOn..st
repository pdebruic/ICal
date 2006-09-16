rendering
renderWeekNumberOn: html 
	html div id: 'weekNumber';
		 class: 'weekNumber';
		 with: self date month printString, ' -- ', self printWeekNumber.