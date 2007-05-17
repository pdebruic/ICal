testing
testCompareTo
	|periodA periodB periodC|

	periodA := (ICFrequencyPeriod new start: (TimeStamp fromString: '1-2-2007 8:00:00') end: (TimeStamp fromString: '1-9-2007 8:00:00')).
	periodB := (ICFrequencyPeriod new start: (TimeStamp fromString: '1-3-2007 8:00:00') end: (TimeStamp fromString: '1-4-2007 8:00:00')).
	periodC := (ICFrequencyPeriod new start: (TimeStamp fromString: '1-1-2007 8:00:00') end: (TimeStamp fromString: '1-28-2007 8:00:00')).

	self should: (periodA compareTo: periodB) = periodB.
	self should: (periodA compareTo: periodC) = periodA.