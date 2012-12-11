rfc2445-tests
testeveryOtherYearJanFebMarFor10
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self everyOtherYearJanFebMarFor10.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count * 3.
	generatedDates
		do: [ :eachDate | 
			self assert: (#(1 2 3) includes: eachDate month).
			self assert: eachDate dayOfMonth equals: event start dayOfMonth ]