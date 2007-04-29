validating
findValidDate: dt

	^ DateAndTime
		year: dt year - (dt year - dtstart year \\ interval)
		month: dt month
		day: dt dayOfMonth
		hour: dt hour
		minute: dt minute
		second: dt second