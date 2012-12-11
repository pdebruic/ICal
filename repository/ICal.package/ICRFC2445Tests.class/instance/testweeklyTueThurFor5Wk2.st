rfc2445-tests
testweeklyTueThurFor5Wk2
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self weeklyTueThurFor5Wk2.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	generatedDates do: [ :eachDate | self assert: (#(3 5) includes: eachDate dayOfWeek) ].
	self assert: generatedDates size equals: count.
