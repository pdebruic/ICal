*ical-gemstone-core
parseValue
	| crlf |
	crlf :=Array with: Character cr with:Character lf.
	
	self stream next.	"ignore $:"
	self
		value:
			(String
				streamContents: [ :strm | 	"self name='PHOTO' ifTrue:[self halt.]."
					strm nextPutAll: (self stream upToAll: crlf).
					self advanceStreamBecauseUpToAll.
					"no unfolding needed"
					[ self whitespaces includes: self stream peek ]
						whileTrue: [ 
							self stream next.	"ignore whitespace"
							strm nextPutAll: (self stream upToAll: crlf).
								self advanceStreamBecauseUpToAll ] ])	"no unfolding needed"