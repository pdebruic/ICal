rfc2445-tests
testfirstSatAfterFirstSunForever
	| schedule generatedDates months end scheduleDuration |
	event addRecurrenceRule: self firstSatAfterFirstSunForever.
	schedule := ICSchedule fromEvent: event.
	months := 20.
	scheduleDuration := self durationClass seconds: 86400 * months * 30.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: months.
	generatedDates
		do: [ :eachDate | 
			self assert: eachDate dayOfWeek equals: 7.
			self assert: eachDate dayOfMonth > 6.
			self assert: eachDate dayOfMonth < 14 ]