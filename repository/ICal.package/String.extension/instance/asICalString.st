*ICal
asICalString
	^(self includesAnyOf: (#($, $; $\) copyWith: Character cr))
		ifTrue: [ 
			(((self copyReplaceAll: '\' with: '\\')
				copyReplaceAll: ',' with: '\,')
					copyReplaceAll: ';' with: '\;')
						copyReplaceAll: (Array with: Character cr) with: '\n' ]
		ifFalse: [ self asString ]