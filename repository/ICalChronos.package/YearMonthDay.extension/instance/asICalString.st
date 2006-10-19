*ICalChronos
asICalString
	^String streamContents: [ :stream |
		stream
			nextPutAll: (self year printPaddedWith: $0 to:  4);
			nextPutAll: (self month printPaddedWith: $0 to:  2);
			nextPutAll: (self dayOfMonth printPaddedWith: $0 to:  2) ]