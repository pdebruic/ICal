instance creation
fromVCardString: aString parameters: aDictionary
	| instance parts |
	instance := self new.
	instance types: (self parseTypes: aDictionary).
	parts := aString  subStringsFull: #($;).
	instance poBox: (String fromVCardString: parts first).
	instance extended: (String fromVCardString: parts second).
	instance street: (String fromVCardString: parts third).
	
	parts size >= 4 ifTrue: [
		instance locality: (String fromVCardString: parts fourth) ].
	parts size >= 5 ifTrue: [
		instance region: (String fromVCardString: parts fifth) ].
	parts size >= 6 ifTrue: [
		instance postalcode: (String fromVCardString: parts sixth) ].
	parts size >= 7 ifTrue: [
		instance country: (String fromVCardString: parts seventh) ].
	^instance