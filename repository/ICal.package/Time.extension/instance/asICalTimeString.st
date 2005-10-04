*ICal
asICalTimeString
	^String streamContents: [ :stream |
		stream
			nextPutAll: (self hour printPaddedWith: $0 to:  2);
			nextPutAll: (self minute printPaddedWith: $0 to:  2);
			nextPutAll: (self second printPaddedWith: $0 to:  2) ]