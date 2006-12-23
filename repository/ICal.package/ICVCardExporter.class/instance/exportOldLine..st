exporting
exportOldLine: aString
	aString size <= 75
		ifTrue: [
			self dataStream
				nextPutAll: aString;
				nextPutAll: String crlf ]
		ifFalse: [
			| left stream first |
			left := aString size.
			stream := aString readStream.
			first := true.
			[ stream atEnd ] whileFalse: [				
				left > 74
					ifFalse: [
						self dataStream nextPutAll: (stream next: left).
						self dataStream nextPutAll: String crlf ]
					ifTrue: [ 
						self dataStream
							nextPutAll: (stream next: (first ifTrue: [ 74 ] ifFalse: [ 73 ]));							
							nextPut: $=;
							nextPutAll: String crlf;
							nextPut: Character space.
						left := left - (first ifTrue: [ 74 ] ifFalse: [ 73 ]).
						first := false ] ] ]