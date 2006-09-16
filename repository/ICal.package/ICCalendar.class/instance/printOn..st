printing
printOn: aStream
	aStream nextPutAll: (summary ifNil:['an ICCalendar'])