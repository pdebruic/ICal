productions
parameterlist: nodes
	| parameters |
	parameters := Dictionary new: nodes size / 2.
	nodes withIndexDo: [ :each :index |
		index even ifTrue: [ parameters add: each ] ].
	^parameters