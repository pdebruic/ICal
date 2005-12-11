converting
asICalString
	^String streamContents: [ :stream |
		self familyName isNil ifFalse: [
			stream nextPutAll: self familyName asICalString ].
		stream nextPut: $; .

		self givenName isNil ifFalse: [
			stream nextPutAll: self givenName asICalString ].
		stream nextPut: $; .

		self additionalNames
			do: [ :each | stream nextPutAll: each asICalString ]
			separatedBy: [ stream nextPut: $, ].
		stream nextPut: $; .

		self honorificPrefixes
			do: [ :each | stream nextPutAll: each asICalString ]
			separatedBy: [ stream nextPut: $, ].
		stream nextPut: $; .

		self honorificSuffixes
			do: [ :each | stream nextPutAll: each asICalString ]
			separatedBy: [ stream nextPut: $, ] ]