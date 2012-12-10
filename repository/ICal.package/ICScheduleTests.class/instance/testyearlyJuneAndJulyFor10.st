rfc2445-tests
testyearlyJuneAndJulyFor10
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self weeklyFor10Count.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 610.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count.
	generatedDates doWithIndex: [ :eachDate | self assert: (#(6 7) includes: eachDate month) ]