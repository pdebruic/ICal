private - filtering
actualByPositions: positionsCollection withDates: dates
	|set current remainingDates result|

	set := OrderedCollection new.		"Set is what the RR standard calls it, but the dates are actually ordered"	
	current := self significantValueOf: dates first.
	remainingDates := dates accumulateWhile: [:date| current = (self significantValueOf: date) ] into: set.
	result := LazyNil new.

	(self atAll: positionsCollection of: set) do: [:e| result := result insertIfUnique: e ].

	^ LazyList
		cons: result
		with: (LazyValue delay: [self actualByPositions: positionsCollection withDates: remainingDates ])