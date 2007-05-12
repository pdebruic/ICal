private - generators
makePeriodsFromDelta: aDeltaBlock add: anAddBlock next: aNextBlock list: startingCollection startingAt: aDateAndTime list: currentCollection accumulating: acc

	^ currentCollection isEmpty
		ifTrue: [
			LazyList
				cons: acc
				with: (LazyValue delay: [ self
					makePeriodsFromDelta: aDeltaBlock
					add: anAddBlock
					next: aNextBlock
					list: startingCollection
					startingAt: (aNextBlock value: aDateAndTime)
					list: startingCollection
					accumulating: LazyNil new ]) ]
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
					list: tail
					accumulating: acc ]
				ifFalse: [
					self makePeriodsFromDelta: aDeltaBlock
						add: anAddBlock
						next: aNextBlock
						list: startingCollection
						startingAt: aDateAndTime
						list: tail
						accumulating: (acc
							insertIfUnique: (ICFrequencyPeriod new start: dt end: (anAddBlock value: 1 value: dt))) ] ]