rfc2445-tests
testeveryDayInJanuaryFor3Years1
	| schedule generatedDates days end |
	event addRecurrenceRule: self everyDayInJanuaryFor3Years1.
	schedule := ICSchedule fromEvent: event.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: 310.
	generatedDates
		do: [ :eachDate | 
			self assert: eachDate month equals: 1.
			self assert: eachDate year < 2007 ]