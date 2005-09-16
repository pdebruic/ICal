calculation
iCalDateAndTime: aTimeStamp
	^(self pad: aTimeStamp year to: 4),
	(self pad: aTimeStamp month to: 2),
	(self pad: aTimeStamp dayOfMonth to: 2),
	'T',
	(self pad: aTimeStamp hour to: 2),
	(self pad: aTimeStamp minute to: 2),
	(self pad: aTimeStamp second to: 2),
	'Z'.