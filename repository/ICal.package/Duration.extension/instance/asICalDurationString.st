*ICal
asICalDurationString
	^String streamContents: [ :stream |
		self isNegative ifTrue: [ stream nextPut: $-. ].
		stream nextPut: $P.
		self justWeeks
			ifTrue: [
				stream
					nextPutAll: self weeks asString;
					nextPut: $W ]
			ifFalse: [
				self days > 0
					ifTrue: [ 
						stream
							nextPutAll: self days asString;
							nextPut: $D ].
				self hasTime ifTrue: [
					stream
						nextPut: $T;
						nextPutAll: self hours asString;
						nextPut: $H;
						nextPutAll: self minutes asString;
						nextPut: $M;
						nextPutAll: self seconds asString;
						nextPut: $S  ] ] ]