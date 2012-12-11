rfc2445-tests
testyearlyJuneAndJulyFor10
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self yearlyJuneAndJulyFor10.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
		generatedDates do: [ :eachDate | self assert: (#(6 7) includes: eachDate month) ].
	self assert: generatedDates size equals: count.
