*ICal
asICalDurationString
	^String streamContents: [ :stream |
		self isNegative ifTrue: [ stream nextPut: $-. ].
		stream nextPut: $P.
		self justWeeks
			ifTrue: [
				stream
					nextPutAll: self weeks abs asString;
					nextPut: $W ]
			ifFalse: [
				self days isZero ifFalse: [ 
					stream
						nextPutAll: self days abs asString;
						nextPut: $D ].
				self hasTime ifTrue: [
					stream
						nextPut: $T;
						"we could leave out those who are 0 but that's just cosmetic"
						nextPutAll: self hours abs asString;
						nextPut: $H;
						nextPutAll: self minutes abs asString;
						nextPut: $M;
						nextPutAll: self seconds abs asString;
						nextPut: $S  ] ] ]