enumerating
dates
	^self isInfinite ifTrue: [InfiniteScheduleLengthError]  ifFalse:[self datesBetween: self start and: self end].