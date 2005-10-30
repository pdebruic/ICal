instance creation
fromICalString: aString
	| instance parts |
	instance := self new.
	parts := aString  subStringsFull: #($;).
	instance familyName: (String fromICalString: parts first).
	instance givenName: (String fromICalString: parts second).
	instance additionalNames: (self unsplit: parts third).
	instance honorificPrefixes: (self unsplit: parts fourth).
	instance honorificSuffixes: (self unsplit: parts fifth).
	^instance