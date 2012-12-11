rfc2445-tests
testeveryThuInJunJulAugForever
	| schedule generatedDates years end scheduleDuration |
	event addRecurrenceRule: self everyThuInJunJulAugForever.
	schedule := ICSchedule fromEvent: event.
	years := 20.
	scheduleDuration := self durationClass seconds: 86400 * years * 365.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: 229.
	generatedDates
		do: [ :eachDate | 
			self assert: eachDate dayOfWeek equals: 5.
			self assert: (#(6 7 8) includes: eachDate month) ]