testing
testInit

	"self should: secondly interval = 1."						"don't have an accessor and that's probably good"
	self should: secondly weekStartday = 'MO'.
	self should: secondly seconds size = 0.