testing
testSelector
	ICConverstion supportedClasses do: [ :each |
		self assert: (each selectors includes: #asICalString).
		self assert: (each selectors includes: #iCalType).
		self assert: (each class selectors includes: #fromICalString:) ]