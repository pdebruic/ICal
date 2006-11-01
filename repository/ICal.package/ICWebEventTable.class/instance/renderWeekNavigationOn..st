rendering
renderWeekNavigationOn: html 
	html div class: 'weekNav';
		
		with: [self renderPreviousWeekOn: html].
	html div with: [self renderWeekNumberOn: html].
	html div class: 'weekNav';
		
		with: [self renderNextWeekOn: html]