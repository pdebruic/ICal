productions
parameter: nodes
	| name value |
	name := nodes first.
	"the second node is '='"
	value := nodes third.
	^name -> value