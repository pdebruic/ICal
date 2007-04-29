running
testEndsBefore

	self should:
		((ICFrequencyPeriod new start: (TimeStamp fromString: '1-1-2007 8:00:00') end: (TimeStamp fromString: '1-8-2007 8:00:00')) endsBefore:
		(ICFrequencyPeriod new start: (TimeStamp fromString: '1-9-2007 8:00:00') end: (TimeStamp fromString: '1-16-2007 8:00:00'))).
		
	self shouldnt:
		((ICFrequencyPeriod new start: (TimeStamp fromString: '1-9-2007 8:00:00') end: (TimeStamp fromString: '1-16-2007 8:00:00')) endsBefore:
		(ICFrequencyPeriod new start: (TimeStamp fromString: '1-1-2007 8:00:00') end: (TimeStamp fromString: '1-8-2007 8:00:00'))).
		
	self shouldnt:
		((ICFrequencyPeriod new start: (TimeStamp fromString: '1-9-2007 8:00:00') end: (TimeStamp fromString: '1-16-2007 8:00:00')) endsBefore:
		(ICFrequencyPeriod new start: (TimeStamp fromString: '1-15-2007 8:00:00') end: (TimeStamp fromString: '1-18-2007 8:00:00')))