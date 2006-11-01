as yet unclassified
hide: calendar 
	events
		do: [:e | e calendar ifNil: [self halt.].e calendar = calendar
				ifTrue: [e hide]]