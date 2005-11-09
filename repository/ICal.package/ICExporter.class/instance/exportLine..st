exporting
exportLine: aString
	aString size <= 75
		ifTrue: [
			self dataStream
				nextPutAll: aString;
				nextPutAll: String crlf ]
		ifFalse: [
			self dataStream next: 75 putAll: aString.
			self dataStream nextPutAll: String crlf.
			(76 to: aString size by: 74) inject: 76 + 74 into: [ :end :start |
				self dataStream
					space;
					next: (end min: aString size + 1) - start putAll: aString startingAt: start;
					nextPutAll: String crlf.
				end + 74 ] ]

	