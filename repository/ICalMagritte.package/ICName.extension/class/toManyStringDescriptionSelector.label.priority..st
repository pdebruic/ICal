*ICalMagritte
toManyStringDescriptionSelector: aSymbol label: aString priority: anInteger
	^MAMemoDescription new
		accessor: (ICMCollectionAccessor selector: aSymbol reference: MAStringDescription new);
		label: aString;
		priority: anInteger;
		propertyAt: #editable put: true;
		lineCount: 3;
		yourself