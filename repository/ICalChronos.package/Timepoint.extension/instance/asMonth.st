*ICalChronos
asMonth
	| dayOfMonth |
	^ Timeperiod
		from:
			(Timepoint
				year: self year
				month: self month
				day: 1
				hour: 0
				minute: 0
				second: 0
				timeZone: self timeZone)
		to:
			(Timepoint
				year: self year
				month: self month
				day: self daysInMonth
				hour: 23
				minute: 59
				second: 59
				timeZone: self timeZone)