private - generators
makePeriodsFromDelta: aDeltaBlock add: anAddBlock next: aNextBlock list: startingCollection startingAt: aDateAndTime list: currentCollection

	^ (self
		makePeriodsFromDelta: aDeltaBlock
		add: anAddBlock
		next: aNextBlock
		list: startingCollection
		startingAt: aDateAndTime
		list: startingCollection
		accumulating: LazyNil new) flatten