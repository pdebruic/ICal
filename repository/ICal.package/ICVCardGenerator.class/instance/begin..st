as yet unclassified
begin: aString
	aString = 'VCARD' ifFalse: [self error: 'Only expecting VCARDS'].
	currentCard _ ICVCard new