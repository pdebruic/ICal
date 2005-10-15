parsing
parseName
	self name: (self stream upToAny: #($; $:)) asUppercase.
	self stream position: self stream position - 1.