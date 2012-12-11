rfc2445-tests
testevery10Days5Occurrences
	| schedule dates timespan end nextDate duration |
	event addRecurrenceRule: self every10Days5Occurrences.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	nextDate := event start.
	duration := self durationClass seconds: 864000.
	end := nextDate + (duration * 4).
	[ nextDate <= end ]
		whileTrue: [ 
			dates add: nextDate.
			nextDate := nextDate + duration ].
	schedule dates doWithIndex: [ :eachDate :index | self assert: eachDate equals: (dates at: index) ]