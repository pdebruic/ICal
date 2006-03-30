*ICalMagritte
descriptionTransparency
	^(MASingleOptionDescription selector: #transparency label: 'Transparency' priority: 800)
		options: self possibleTransparencies;
		propertyAt: #editable put: true;
		yourself