calculation
iCalDate: aTimeStamp
	^(self pad: aTimeStamp year to: 4),
	(self pad: aTimeStamp month to: 2),
	(self pad: aTimeStamp dayOfMonth to: 2).