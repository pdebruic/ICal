rfc2445-tests
testevery3HoursOnADay
	| schedule dates timespan end nextDate duration |
	event addRecurrenceRule: self every3HoursOnADay.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	nextDate := event start.
	duration := self durationClass seconds: 3600 * 3.
	end := self every3HoursOnADay repetition.
	[ nextDate < end ]
		whileTrue: [ 
			dates add: nextDate.
			nextDate := nextDate + duration ].
	schedule dates doWithIndex: [ :eachDate :index | self assert: eachDate equals: (dates at: index) ]