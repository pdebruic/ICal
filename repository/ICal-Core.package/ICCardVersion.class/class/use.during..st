as yet unclassified
use: anObject during: aBlock
	^ aBlock
		on: self
		do: [ :notification | ^ anObject ]