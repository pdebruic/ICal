accessing
duration
	| duration |
	duration := ScientificDuration zero.
	(Interval from: 1 to: self occurrences - 1) do: [ :each | duration := duration + (self scheduleArrayAt: each) ].
	^ duration