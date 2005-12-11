converting
asICalString
	^String streamContents: [ :stream |
		stream nextPutAll: self name asICalString.
		self unitNames isEmpty ifFalse: [
			stream nextPut: $; ].
		self unitNames
			do: [ :each | stream nextPutAll: each asICalString ]
			separatedBy: [ stream nextPut: $; ] ]