testing
shouldShowAlert

	^self hasAlert and: [(self alertTime <= TimeStamp current) and: [self alertCounter <= 3]]. 