as yet unclassified
testGreaterThan

	self assert:
		(ICFrequencyPeriod new start: (TimeStamp fromString: '1-9-2007 8:00:00') end: (TimeStamp fromString: '1-16-2007 8:00:00')) >
		(ICFrequencyPeriod new start: (TimeStamp fromString: '1-1-2007 8:00:00') end: (TimeStamp fromString: '1-8-2007 8:00:00'))