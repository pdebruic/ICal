*ICalMagritte
descriptionUnitNames
	^MAMemoDescription new
		accessor: (ICMCollectionAccessor selector: #unitNames reference: MAStringDescription new);
		label: 'Unit Names';
		priority: 200;
		lineCount: 3;
		propertyAt: #editable put: true;
		yourself