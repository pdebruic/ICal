testing
testFloatPrecision
	"it's ok when this test fails, floats are just not precise enough"
	| string float |
	string := '1000000.0000001'.
	float := Float fromICalString: string.
	self assert: string  = float asICalString.
	self assert: float = 1000000.0000001.