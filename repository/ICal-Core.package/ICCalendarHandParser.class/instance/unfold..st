utilities
unfold: aString
	"remove any sequence of CR LF WSP"

	| pattern whiteSpaces |
	whiteSpaces := self unfoldEquals
		ifTrue: [ self unfoldEqualsWhiteSpaces ]
		ifFalse: [ self unfoldWhiteSpaces ].
	^ whiteSpaces
		inject: aString
		into: [ :string :each | 
			(string includesSubString: each)
				ifFalse: [ string ]
				ifTrue: [ string copyReplaceAll: each with: '' ] ]