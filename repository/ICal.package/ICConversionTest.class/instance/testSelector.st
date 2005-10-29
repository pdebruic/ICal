testing
testSelector
	ICConversion supportedClasses do: 
			[:each | 
			self assert: (each selectors includes: #asICalString).
			self assert: (each class selectors includes: #iCalType).
			self assert: (each class selectors includes: #fromICalString:)].
	ICConversion supportedComponents 
		do: [:each | self assert: (each class selectors includes: #iCalType)]