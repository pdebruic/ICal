rfc2445-tests
testevery90MinsFor4
	| schedule dates timespan end nextDate duration count |
	event addRecurrenceRule: self every90MinsFor4.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	nextDate := event start.
	count := 4.
	duration := self durationClass seconds: 60 * 90.
	end := nextDate + (duration * count).
	[ nextDate < end ]
		whileTrue: [ 
			dates add: nextDate.
			nextDate := nextDate + duration ].
	schedule dates doWithIndex: [ :eachDate :index | self assert: eachDate equals: (dates at: index) ]