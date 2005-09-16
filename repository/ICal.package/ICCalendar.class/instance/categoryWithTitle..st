categories
categoryWithTitle: aString
	^self categories detect: [:category | category title = aString] ifNone: [nil]