processing-properties
geo: aString parameters: aDictionary
	| coords |
	coords := (self splitAtCommas: aString) collect: [ :each |
		Float fromICalString: each ].
	self tempComponent geo: coords first @ coords second