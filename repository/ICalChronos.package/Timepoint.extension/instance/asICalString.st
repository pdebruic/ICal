*ICalChronos
asICalString
	^String streamContents: [ :stream |
		stream 
			nextPutAll: self asDate asICalString;
			nextPut: $T;
			nextPutAll: self timeOfDay asICalString ]