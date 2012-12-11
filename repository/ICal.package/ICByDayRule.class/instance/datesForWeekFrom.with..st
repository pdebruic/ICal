growing
datesForWeekFrom: existingDates with: byValue
	| lastDay nextDay newDayOfMonth dates startOfWeek month year |
	dates := OrderedCollection new.
	startOfWeek := existingDates first.
	year := startOfWeek year.
	nextDay := self nextOccuranceOf: byValue starting: startOfWeek plus: startOfWeek dayOfMonth.
	month := startOfWeek month.
	newDayOfMonth := nextDay.
	nextDay > startOfWeek daysInMonth
		ifTrue: [ month:=month +1. 
			newDayOfMonth := nextDay - startOfWeek daysInMonth.
			month > 12
				ifTrue: [ 
					month := 1.
					year := year + 1 ] ].
	dates
		add:
			(self dateAndTimeClass
				year: year
				month: month
				day: newDayOfMonth
				hour: (self hourFor: startOfWeek)
				minute: (self minuteFor: startOfWeek)
				second: (self secondFor: startOfWeek)).
	^ dates