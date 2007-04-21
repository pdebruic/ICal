private
deltaToFirstDay: aDayString in: aDateAndTime
	|startDay day|

	startDay := aDateAndTime asMonth asDate weekdayIndex.
	day := self dayIndexOf: aDayString.
	
	^ day < startDay
		ifTrue: [ 7 - (startDay - day) ]
		ifFalse: [ day - startDay ]