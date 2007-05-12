private - filtering
byWeekNos: weekNosCollection withPeriods: periods

	^ self
		byRuleWithList: weekNosCollection asArray
		start: [:start| self firstCalendarWeekOf: start ]
		delta: [:wkno :dt| |actual|
			actual := 7 * (wkno < 0
				ifTrue: [ wkno + 1 + ((dt daysInYear - (1 + (self deltaToFirstDay: weekStartday in: dt))) // 7) floor ]
				ifFalse: [ wkno - 1 ]).
			(actual between: 0 and: dt daysInYear - 1)
				ifTrue: [ DateAndTime date: (dt asDate addDays: actual) time: (dt asTime) ]
				ifFalse: [ nil ] ]
		add: [:n :dt| DateAndTime date: (dt asDate addDays: n * 7) time: (dt asTime) ]
		next: [:dt| DateAndTime date: (dt asDate addMonths: 12) time: (dt asTime) ]
		withPeriods: periods