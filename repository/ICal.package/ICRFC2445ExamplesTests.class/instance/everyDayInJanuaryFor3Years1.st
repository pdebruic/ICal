rfc2445-rules
everyDayInJanuaryFor3Years1
	event
		start:
			(self dateAndTimeClass
				year: 1998
				month: 1
				day: 1
				hour: 9
				minute: 0
				second: 0).
	^ ICRecurrenceRule fromICalString: 'FREQ=DAILY;UNTIL=20000131T090000Z;BYMONTH=1'