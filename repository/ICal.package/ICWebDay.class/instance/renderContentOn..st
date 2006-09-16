rendering
renderContentOn: html 
	hoursId isNil ifTrue:[self initializeIDs: html].
	html div class: 'float';
		 id: date day printString;
		
		
		with: [self renderMeOn: html]