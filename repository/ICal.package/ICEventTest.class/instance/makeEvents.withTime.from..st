private
makeEvents: aDateArray withTime: aTime from: anEvent
	|dates|

	dates := OrderedCollection new.

	aDateArray do: [:yearAssoc| |y|
		y := yearAssoc key.
		yearAssoc value do: [:monthAssoc| |m|
			m := monthAssoc key.
			monthAssoc value do: [:d|
				dates addLast: (anEvent occurrenceFromDate: (DateAndTime date: (Date year: y month: m day: d) time: aTime)) ] ] ].

	^ dates