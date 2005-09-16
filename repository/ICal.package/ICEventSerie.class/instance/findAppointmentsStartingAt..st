enumerating
findAppointmentsStartingAt: timestamp 
	^self events select: [:each | each startsInHour: timestamp]