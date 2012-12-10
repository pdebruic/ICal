as yet unclassified
testOrdinalIndexes
	self assert: (byRule ordinalIndexesFor: date ofEach: #asMonth) equals: #(2 -3).
	self assert: (byRule ordinalIndexesFor: date ofEach: #itsYear) equals: #(49 -3)