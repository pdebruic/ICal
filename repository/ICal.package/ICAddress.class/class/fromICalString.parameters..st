instance creation
fromICalString: aString parameters: aDictionary
	| instance parts |
	instance := self new.
	instance types: (self parseTypes: aDictionary).
	parts := aString  subStringsFull: #($;).
	instance poBox: (String fromICalString: parts first).
	instance extended: (String fromICalString: parts second).
	instance street: (String fromICalString: parts third).
	instance locality: (String fromICalString: parts fourth).
	instance region: (String fromICalString: parts fifth).
	instance postalcode: (String fromICalString: parts sixth).
	instance country: (String fromICalString: parts seventh).
	^instance