as yet unclassified
exportAdditionalOf: anObject type: aTypeInformation
	super exportAdditionalOf: anObject type: aTypeInformation.
	(aTypeInformation defaultType = String iCalType
		and: [ anObject isString ]
		and: [ (ICConversion isSupportedComponent: anObject) not ])
			ifTrue: [ self exportParameter: 'ENCODING' value: self encoding ]
		