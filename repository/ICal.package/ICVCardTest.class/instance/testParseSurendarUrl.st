testing
testParseSurendarUrl
	| cards card |
	cards := ICCardHandParser parseVCardString: self surendarCardString.
	self assert: cards size = 1.
	card := cards anyOne.

	self assert: card url asString = 'http://www.cse.nd.edu/~surendar/'.