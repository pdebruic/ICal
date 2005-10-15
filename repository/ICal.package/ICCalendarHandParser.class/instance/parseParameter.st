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
	self parameters add: paramName asUppercase -> paramValue asUppercase.
	self stream position: self stream position - 1.