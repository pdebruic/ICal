*ICalMagritte
toManyStringDescriptionSelector: aSymbol label: aString priority: anInteger
	^(MAToManyRelationDescription selector: aSymbol label: aString priority: anInteger)
		propertyAt: #editable put: true;
		"reference: MAStringDescription new;"
		classes: (Array with: String);
		yourself