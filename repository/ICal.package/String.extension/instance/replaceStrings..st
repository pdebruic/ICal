*ICal
replaceStrings: aCollection
	| result |
	result := self.
	aCollection do: [ :each |
		(result includesSubString: each key) ifTrue: [
				result := result copyReplaceAll: each key with: each value ] ].
	^result