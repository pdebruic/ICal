rendering
renderContentOn: html 
	html div with: [
	html div with:[ self renderWeekNavigationOn: html].
	html break.
	html div  id: 'week'; 
		with: [self renderTableOn: html]
	
		]