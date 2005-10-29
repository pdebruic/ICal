utilities
createValue: aString parameters: aDictionary default: aType
	| iCalType |
	iCalType := aDictionary at: 'VALUE' ifAbsent: [ aType ].
	^(ICConversion propertyClassFor: iCalType)
		fromICalString: aString parameters: aDictionary