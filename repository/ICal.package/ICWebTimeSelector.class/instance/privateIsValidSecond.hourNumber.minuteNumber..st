as yet unclassified
privateIsValidSecond: theSecond hourNumber: theHour minuteNumber: theMinute

	theHour >= 0 & (theHour <= 23) ifFalse: [^false].
	theMinute >= 0 & (theMinute <= 59) ifFalse: [^false].
	^ theSecond >= 0 & (theSecond <= 59)