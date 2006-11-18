private
occurrenceFromDate: aDate
	| event |
	
	event := self class newFrom: self.
	event start: (self dateAndTimeClass date: aDate time: self start asTime).
	event end: (self dateAndTimeClass date: aDate time: self end asTime).
	
	^ event.
	
	"TODO:  Later, when rrules behave correctly, this can set event start with aDate (actually, it will be 
	aDateAndTime)."