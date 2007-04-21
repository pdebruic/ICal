processing-properties
geo: aString parameters: aDictionary
	| coords |
	coords := self createMulitValue: aString parameters: aDictionary class: Float.
	self tempComponent geo: coords first @ coords second