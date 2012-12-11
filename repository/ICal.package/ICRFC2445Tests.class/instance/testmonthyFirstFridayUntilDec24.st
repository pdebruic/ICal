rfc2445-tests
testmonthyFirstFridayUntilDec24
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self monthyFirstFridayUntilDec24.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: 4.
	generatedDates do: [ :eachDate | self assert: eachDate dayOfWeek equals: 6 ]