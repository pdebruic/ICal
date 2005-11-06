*ICal
fromVCardString: aString
	| string |
	string := (ICCardVersion value < 3.0)
		ifFalse: [((aString includesSubString: '=0A')
			or: [ (aString includesSubString: '=0D') ]
			or: [ (aString includesSubString: '\;') ])
			ifTrue: [
				(((aString copyReplaceAll: '=0D=0A' with: (Array with: Character cr))
					copyReplaceAll: '=0A' with: (Array with: Character cr))
						copyReplaceAll: '=0D,' with: (Array with: Character cr)) ]]
		ifTrue: [ aString ].
	^self fromICalString: string