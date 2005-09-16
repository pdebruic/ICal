testing
startsInHour: timestamp 
	^(self findAppointmentsStartingAt: timestamp) isEmpty not