*ICalMagritte
toManyStringDescriptionSelector: aSymbol label: aString priority: anInteger
	^MAMemoDescription new
		accessor: (ICMCollectionAccessor selector: aSymbol reference: MAStringDescription new);
		label: aString;
		priority: anInteger;
		beEditable;
		lineCount: 3;
		yourself