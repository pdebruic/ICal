utilities
asSelector: aString
	| parts |
	parts := aString subStrings: #($-).
	^String streamContents: [ :stream |
		parts allButFirst do: [ :each |
			stream nextPutAll: each asLowercase ].
		stream nextPut: $: ]