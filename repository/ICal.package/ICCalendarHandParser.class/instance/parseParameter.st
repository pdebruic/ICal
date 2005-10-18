parsing
parseParameter
	| paramName paramValue |
	self stream next. "ignore $;"
	paramName := (self stream upTo: $=).
	(stream peek = $")
		ifTrue: [
			self stream next.
			self flag: #todo. "check for double qutes is value"
			paramValue := self stream upTo: $"]
		ifFalse: [
			paramValue := self stream upToAny: #($; $:)].
	paramName := (self unfold: paramName) asUppercase. "case insensitive"
	paramValue := (self unfold: paramValue) asUppercase. "case insensitive"
	self parameters add: paramName -> paramValue.
	self stream position: self stream position - 1.