private
makeDates: aDateArray withTime: aTime
	|dates|

	dates := OrderedCollection new.

	aDateArray do: [:yearAssoc| |y|
		y := yearAssoc key.
		yearAssoc value do: [:monthAssoc| |m|
			m := monthAssoc key.
			monthAssoc value do: [:d|
				dates addLast: (DateAndTime date: (Date year: y month: m day: d) time: aTime) ] ] ].

	^ dates

	