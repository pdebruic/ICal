instance creation
fromICalString: aString parameters: aDictionary
	| related valueType value |
	related := aDictionary at: 'RELATED' ifAbsent: [ self relatedToStart ].
	valueType := aDictionary at: 'VALUE' ifAbsent: [ ICConversion durationClass  iCalType ].
	value := (ICConversion propertyClassFor: valueType) fromICalString: aString.
	^self new
		related: related;
		value: value;
		yourself