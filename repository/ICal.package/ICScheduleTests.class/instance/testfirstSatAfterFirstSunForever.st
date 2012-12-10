rfc2445-tests
testfirstSatAfterFirstSunForever
	| schedule generatedDates years end scheduleDuration |
	event addRecurrenceRule: self firstSatAfterFirstSunForever.
	schedule := ICSchedule fromEvent: event.
	years := 20.
	scheduleDuration := self durationClass seconds: 86400 * years * 365.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: years.
	generatedDates
		do: [ :eachDate | 
			self assert: eachDate dayOfWeek equals: 7.
			self assert: eachDate dayOfMonth > 6.
			self assert: eachDate dayOfMonth < 14 ]