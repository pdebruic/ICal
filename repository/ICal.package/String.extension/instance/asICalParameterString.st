*ICal
asICalParameterString
	^(self includesAnyOf: #($, $; $\ $:))
		ifTrue: [ 
			'"' , self asString , '"' ]
		ifFalse: [ self asString ]