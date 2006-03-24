*ICalMagritte
textualPriorityDictionary
	^Dictionary new
		at: self undefinedPriority put: self textualPriorityUndefined;
		at: self lowPriority put: self textualPriorityLow;
		at: self mediumPriority put: self textualPriorityMedium;
		at: self highPriority put: self textualPriorityHigh;
		yourself