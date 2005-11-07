as yet unclassified
exportAdditionalOf: anObject type: aTypeInformation
	super exportAdditionalOf: anObject type: aTypeInformation.
	aTypeInformation defaultType = String iCalType
		ifTrue: [ self exportParameter: 'ENCODING' value: self encoding ]
		