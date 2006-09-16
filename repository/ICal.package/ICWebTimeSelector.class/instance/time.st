as yet unclassified
time
	(self 
		privateIsValidSecond: second
		hourNumber: hour
		minuteNumber: minute) ifFalse: [self error: 'Invalid time'].
	^Time 
		hour: hour
		minute: minute
		second: second