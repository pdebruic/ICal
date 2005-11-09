*ICal
asICalString
	"copy pasted from #printOn:"
	| aFraction tmpFractionPart |
	^String streamContents: [ :stream |
		self negative ifTrue: [ stream nextPut: $-].
		aFraction := fraction abs.
		stream nextPutAll: aFraction truncated printString.
		scale isZero ifFalse: [ 
			stream nextPut: $..
			tmpFractionPart := aFraction fractionPart.
			scale timesRepeat: [
				tmpFractionPart := tmpFractionPart * 10.
				stream nextPut: (Character digitValue: tmpFractionPart truncated).
				tmpFractionPart := tmpFractionPart fractionPart ] ] ]