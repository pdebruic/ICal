private
atAll: indexArray of: aCollection
	"Like the normal #atAll:, except it handles negative indexes as well"
	|newCollection|

	newCollection := aCollection species ofSize: indexArray size.
	1 to: indexArray size do:
		[:i| |index|
			index := indexArray at: i.
			newCollection
				at: i
				put: (aCollection at: (index < 0
					ifTrue: [ aCollection size + 1 - index abs ]
					ifFalse: [ index ])) ].

	^ newCollection