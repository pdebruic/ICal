*ICal
asVCardString
	^self nanoSecond isZero
		ifTrue: [ self print24 ]
		ifFalse: [ self print24 , '.' , self fractionString ]