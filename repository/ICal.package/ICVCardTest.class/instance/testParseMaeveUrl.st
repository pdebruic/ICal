testing
testParseMaeveUrl
	| cards card |
	cards := ICCardHandParser parseVCardString: self maeveCardString.
	self assert: cards size = 1.
	card := cards anyOne.
	
	self assert: card url asString = 'http://www.myspace.com/maeveprice'.	