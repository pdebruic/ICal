*ICalChronos
asVCardString
	^String streamContents: [ :stream |
		self printOn: stream using: ChronosPrintPolicy rfc822.
		self nanosecondsSinceSecond isZero ifFalse: [
			stream
				nextPut: $.;
				nextPutAll: (ICChronologySerializer fractionString: self nanosecondsSinceSecond) ] ]