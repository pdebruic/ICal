exporting
exportToDo: aToDo 
	self exportLine: 'BEGIN:VTODO'.
	
	self exportLine: 'DUE;VALUE=DATE-TIME:', (self iCalDateAndTime: (aToDo tsDeadline)).
	
	aToDo isComplete ifTrue: [ 
		self exportLine: 'STATUS:COMPLETED'. 
		self exportLine: 'COMPLETED:', (self iCalDateAndTime: aToDo tsCompleted).
	].
			
	self exportGeneralData: aToDo.
	self exportLine: 'END:VTODO'