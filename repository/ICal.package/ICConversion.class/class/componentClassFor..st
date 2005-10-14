accessing
componentClassFor: anICalComponentName
	^self supportedComponents detect: [ :each |
		each iCalType = anICalComponentName ]