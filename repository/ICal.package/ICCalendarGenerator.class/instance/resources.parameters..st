processing-properties
resources: aString parameters: aDictionary
	| resources |
	resources := (self splitAtCommas: aString) collect: [ :each |
		self createValue: each parameters: aDictionary default: String ].
	self tempComponent resources: resources