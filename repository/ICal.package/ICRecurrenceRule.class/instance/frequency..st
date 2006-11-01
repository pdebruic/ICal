accessing
frequency: anICFrequencyOrString
	frequency := (anICFrequencyOrString isKindOf: ICFrequency)
		ifTrue: [ frequency := anICFrequencyOrString. ]
		ifFalse: [ ICFrequency perform: anICFrequencyOrString asLowercase asSymbol ].
		
	"TODO:  Needs to copy the old one if there was one"