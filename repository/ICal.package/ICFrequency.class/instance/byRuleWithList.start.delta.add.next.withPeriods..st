private - filtering
byRuleWithList: aCollection start: aStartBlock delta: aDeltaBlock add: anAddBlock next: aNextBlock withPeriods: periods
	
	^ periods collectAndFlatten: [:period| |mask|
		mask := (self
			makePeriodsFromDelta: aDeltaBlock
			add: anAddBlock
			next: aNextBlock
			list: aCollection
			startingAt: (aStartBlock value: period start)
			list: aCollection)
				takeWhile: [:e| e start < period end ].

		self
			intersect: { period }
			with: mask asOrderedCollection					"TODO: Is sorting needed here?  Or is it enough that makePeriods is sorted and unique?"
	]