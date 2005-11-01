private
createValue: aString parameters: aDictionary default: aType
	^((aDictionary includesKey: 'ENCODING')
		and: [ ((aDictionary at: 'ENCODING') = 'B' ) or: [ (aDictionary at: 'ENCODING') = 'BASE64' ] ])
			ifFalse: [ super createValue: aString parameters: aDictionary default: aType ]
			ifTrue: [
				(ICConversion propertyClassFor: 'BINARY')
					fromICalString: aString parameters: aDictionary ]