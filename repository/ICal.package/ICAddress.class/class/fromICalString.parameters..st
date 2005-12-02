instance creation
fromICalString: aString parameters: aDictionary
	| instance parts |
	instance := self new.
	instance types: (self parseTypes: aDictionary).
	parts := aString  subStringsFull: #($;).
	instance poBox: (String fromICalString: parts first).
	instance extended: (String fromICalString: parts second).
	instance street: (String fromICalString: parts third).
	
	parts size >= 4 ifTrue: [
		instance locality: (String fromICalString: parts fourth) ].
	parts size >= 5 ifTrue: [
		instance region: (String fromICalString: parts fifth) ].
	parts size >= 6 ifTrue: [
		instance postalcode: (String fromICalString: parts sixth) ].
	parts size >= 7 ifTrue: [
		instance country: (String fromICalString: parts seventh) ].
	^instance