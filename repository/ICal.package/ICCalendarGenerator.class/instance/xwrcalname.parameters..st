processing-extensions
xwrcalname: aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: String iCalType.
	calendar summary: value