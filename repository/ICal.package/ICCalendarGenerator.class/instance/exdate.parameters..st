processing-properties
exdate: aString parameters: aDictionary
	| dates |
	dates := (self splitAtCommas: aString) collect: [ :each |
		self createValue: each parameters: aDictionary default: DateAndTime ].
	self tempComponent exclusionDates: dates