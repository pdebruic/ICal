exporting
exportToDo: aToDo 
	| tsCompleted |
	self exportLine: 'BEGIN:VTODO'.
	
	aToDo due ifNotNil: [
		self exportLine: 'DUE;VALUE=DATE-TIME:', (self iCalDateAndTime: (aToDo due))].
	
	aToDo isCompleted ifTrue: [ 
		self exportLine: 'STATUS:COMPLETED'. 
		tsCompleted :=  aToDo completed.
		tsCompleted := tsCompleted ifNil: [ DateAndTime now ].
		self exportLine: 'COMPLETED:', (self iCalDateAndTime: tsCompleted).
	].
			
	self exportGeneralData: aToDo.
	self exportLine: 'END:VTODO'