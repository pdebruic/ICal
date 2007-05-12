private
frequencyBoundryOf: dt
	|day|

	day := self startDayForWeekOf: dt.
	
	^ day > 0
		ifTrue: [ DateAndTime year: dt year month: dt month day: day hour: 0 minute: 0 second: 0 ]
		ifFalse: [ |date|
			date := DateAndTime year: dt year month: dt month day: 1 hour: 0 minute: 0 second: 0.
			date - (Duration days: 1 - day) ]