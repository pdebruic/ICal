utilities
tokensAsString: tokens
	^String streamContents: [ :stream |
		tokens do: [ :each | stream nextPutAll: each value] ]