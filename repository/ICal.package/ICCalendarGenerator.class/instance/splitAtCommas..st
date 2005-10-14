accessing
splitAtCommas: aString
	| indices start parts |
	indices := OrderedCollection new.
	aString withIndexDo: [ :each :index |
		(each = $,
			and: [ index > 1 ]
			and: [ (aString at: index - 1) ~= $\ ])
			ifTrue: [ indices add: index ] ].
	start := 1.
	parts := OrderedCollection new: indices size + 1.
	indices do: [ :each |
		parts add: (aString copyFrom: start to: each - 1).
		start := each + 1 ].
	parts add: (aString copyFrom: start to: aString size).
	^parts