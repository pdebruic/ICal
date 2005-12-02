*ICal
fromNewString: aString
	^((aString includesSubString: '\\')
		or: [ (aString includesSubString: '\,') ]
		or: [ (aString includesSubString: '\;') ]
		or: [ (aString includesSubString: '\n') ]
		or: [ (aString includesSubString: '\N') ])
		ifTrue: [
			((((aString copyReplaceAll: '\n' with: (Array with: Character cr))
				copyReplaceAll: '\N' with: (Array with: Character cr))
					copyReplaceAll: '\,' with: ',')
						copyReplaceAll: '\;' with: ';')
							copyReplaceAll: '\\' with: '\' ]
		ifFalse: [ aString ]