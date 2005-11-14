processing-properties
xaim:  aString parameters: aDictionary
	| value |
	value := self createInstantMessageId: aString parameters: aDictionary.
	self currentCard addAimid: value