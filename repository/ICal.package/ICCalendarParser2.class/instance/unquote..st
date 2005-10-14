utilities
unquote: nodes
	| string |
	string := nodes first.
	^string copyFrom: 2 to: string size