*ICal
fractionString
	| string lastIndex |
	string := self nanoSecond asString.
	lastIndex := string size.
	[ (string at: lastIndex) = $0 ] whileTrue: [
		lastIndex := lastIndex - 1].
	^string first: lastIndex
	