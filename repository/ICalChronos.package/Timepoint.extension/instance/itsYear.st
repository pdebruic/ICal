*ICalChronos
itsYear
	^ Timeperiod
		from:
			(Timepoint
				year: self year
				month: 1
				day: 1
				hour: 0
				minute: 0
				second: 0
				timeZone: self timeZone)
		to:
			(Timepoint
				year: self year
				month: 12
				day: 31
				hour: 23
				minute: 59
				second: 59
				timeZone: self timeZone)