utilities
unfold: aString
	"remove any sequence of CR LF WSP"
	| pattern whiteSpaces |
	whiteSpaces := Array
		with: Character space
		with: Character tab
		with: (Character value: 9)
		with: (Character value: 32).
	pattern := Array new: 3.
	pattern at: 1 put: Character cr.
	pattern at: 2 put: Character lf.
	^whiteSpaces inject: aString into: [ :each :string |
		pattern at: 3 put: each.
		(string includesSubString: pattern)
			ifFalse: [ aString ]
			ifTrue: [ aString copyReplaceAll: pattern with: ''  ] ]