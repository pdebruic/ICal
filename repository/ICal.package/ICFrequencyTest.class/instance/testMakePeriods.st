testing
testMakePeriods
	|list periods|

	list := #(3 12 45 98).

	periods := (((secondly makePeriodsFromDelta: [:n :e| e + n ] add: [:n :e| e + n]
		next: [:e| e + 100] list: list startingAt: 1 list: list)
			collect: [:p| p start -> p end ]) take: 6) asOrderedCollection.

	self should: periods = {4 -> 5. 13 -> 14. 46 -> 47. 99 -> 100. 104 -> 105. 113 -> 114 } asOrderedCollection.

	periods := (((secondly makePeriodsFromDelta: [:n :e| n > 90 ifTrue: [ nil ] ifFalse: [ e + n ] ] add: [:n :e| e + n + 1]
		next: [:e| e + 101] list: list startingAt: 1 list: list)
			collect: [:p| p start -> p end ]) take: 6) asOrderedCollection.

	self should: periods = {4 -> 6. 13 -> 15. 46 -> 48. 105 -> 107. 114 -> 116. 147 -> 149 } asOrderedCollection.