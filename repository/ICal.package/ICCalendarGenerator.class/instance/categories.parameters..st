processing-properties
categories: aString parameters: aDictionary
	| categories |
	categories := (self splitAtCommas: aString) collect: [ :each |
		ICCategory fromICalString: each].
	self tempComponent categories: categories.