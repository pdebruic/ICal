*ICalMagritte
defaultContainer
	^super defaultContainer
		addCondition: ICMEventCondtion new labelled: ICMEventCondtion defaultLabel;
		yourself