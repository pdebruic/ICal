processing-properties
xicq:  aString parameters: aDictionary
	| value |
	value := self createInstantMessageId: aString parameters: aDictionary.
	self currentCard addIcqid: value