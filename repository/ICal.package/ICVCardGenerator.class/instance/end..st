as yet unclassified
end: aString
	aString = 'VCARD' ifFalse: [self error: 'Only expecting VCARDS'].
	cards add: currentCard.
	currentCard _ nil