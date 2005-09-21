exporting
exportToDo: aToDo 
	| tsCompleted |
	self exportLine: 'BEGIN:VTODO'.
	
	aToDo tsDeadline ifNotNil: [
		self exportLine: 'DUE;VALUE=DATE-TIME:', (self iCalDateAndTime: (aToDo tsDeadline))].
	
	aToDo isComplete ifTrue: [ 
		self exportLine: 'STATUS:COMPLETED'. 
		tsCompleted :=  aToDo tsCompleted.
		tsCompleted := tsCompleted ifNil: [ TimeStamp now ].
		self exportLine: 'COMPLETED:', (self iCalDateAndTime: tsCompleted).
	].
			
	self exportGeneralData: aToDo.
	self exportLine: 'END:VTODO'