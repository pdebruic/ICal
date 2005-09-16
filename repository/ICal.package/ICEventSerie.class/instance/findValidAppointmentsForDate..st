enumerating
findValidAppointmentsForDate: aDate 
	^self events select: [:each | each isValidForDate: aDate]