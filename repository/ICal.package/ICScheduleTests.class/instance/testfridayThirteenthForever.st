rfc2445-tests
testfridayThirteenthForever
	| schedule generatedDates years end scheduleDuration |
	event addRecurrenceRule: self fridayThirteenthForever.
	schedule := ICSchedule fromEvent: event.
	years := 20.
	scheduleDuration := self durationClass seconds: 86400 * years * 365.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: years.
	generatedDates
		do: [ :eachDate | 
			self assert: eachDate dayOfWeek equals: 6.
			self assert: eachDate dayOfMonth equals: 13 ]