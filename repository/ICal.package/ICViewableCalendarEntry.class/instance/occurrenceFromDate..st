private
occurrenceFromDate: aDateAndTime
	| event |
	
	event := self class newFrom: self.
	event start: aDateAndTime.
	event end: (DateAndTime date: aDateAndTime asDate time: self end asTime).
	
	^ event.