private - generators
makePeriodsFromDelta: aDeltaBlock add: anAddBlock next: aNextBlock list: startingCollection startingAt: aDateAndTime list: currentCollection

	^ currentCollection isEmpty
		ifTrue: [ self
			makePeriodsFromDelta: aDeltaBlock
			add: anAddBlock
			next: aNextBlock
			list: startingCollection
			startingAt: (aNextBlock value: aDateAndTime)
			list: startingCollection ]
		ifFalse: [ |dt tail|
			tail := currentCollection allButFirst.
			dt := aDeltaBlock value: currentCollection first value: aDateAndTime.
			dt == nil
				ifTrue: [ self
					makePeriodsFromDelta: aDeltaBlock
					add: anAddBlock
					next: aNextBlock
					list: startingCollection
					startingAt: aDateAndTime
					list: tail ]
				ifFalse: [
					LazyList
						cons: (ICFrequencyPeriod new start: dt end: (anAddBlock value: 1 value: dt))
						with: (LazyValue delay: [ self
							makePeriodsFromDelta: aDeltaBlock
							add: anAddBlock
							next: aNextBlock
							list: startingCollection
							startingAt: aDateAndTime
							list: tail ]) ] ]