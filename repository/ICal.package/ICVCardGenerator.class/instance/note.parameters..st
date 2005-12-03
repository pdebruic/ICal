processing-properties
note: aString parameters: aDictionary
	| notes |
	notes := self createMulitValue: aString parameters: aDictionary class: String.
	self currentCard notes: notes.