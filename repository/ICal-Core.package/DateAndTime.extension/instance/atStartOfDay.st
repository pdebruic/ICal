*ICal-Core
atStartOfDay
	seconds = 0
		ifTrue: [ ^ self copy ].
	^ self class basicNew ticks: (Array with: julianDayNumber with: offset asSeconds negated with: 0) offset: offset