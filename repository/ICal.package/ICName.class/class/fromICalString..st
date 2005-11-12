instance creation
fromICalString: aString
	| instance parts |
	instance := self new.
	parts := aString  subStringsFull: #($;).
	instance familyName: (String fromICalString: parts first).
	instance givenName: (String fromICalString: parts second).
	
	"there should be no need to do these checks, but VB programmers are idiots"
	parts size >= 3 ifTrue: [
		instance additionalNames: (self unsplit: parts third) ].
	parts size >= 4 ifTrue: [
		instance honorificPrefixes: (self unsplit: parts fourth) ].
	parts size >= 5 ifTrue: [
		instance honorificSuffixes: (self unsplit: parts fifth) ].
	^instance