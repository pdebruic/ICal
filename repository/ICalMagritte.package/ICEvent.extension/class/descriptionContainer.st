*ICalMagritte
descriptionContainer
	^super descriptionContainer
		addCondition: ICMEventCondition new labelled: ICMEventCondition defaultLabel;
		yourself