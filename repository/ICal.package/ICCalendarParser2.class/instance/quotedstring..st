productions
quotedstring: nodes
	| tokens |
	tokens := nodes first.
	^String streamContents: [ :stream |
		1 to: tokens size - 1 do:  [ :each | "leave out first and last, they are double quotes"
			stream nextPutAll: (tokens at: each) value ] ]