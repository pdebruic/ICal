rfc2445-tests
testevery18MonthsOnThe10thThrough15thFor10
	| schedule generatedDates |
	event addRecurrenceRule: self every18MonthsOnThe10thThrough15thFor10.
	schedule := ICSchedule fromEvent: event.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: 60.
	generatedDates
		do: [ :eachDate | 
			self assert: eachDate dayOfMonth < 16.
			self assert: eachDate dayOfMonth > 9 ]