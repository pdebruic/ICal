testing
testParseGoofy
	| cards card address |
	cards := ICCardHandParser parseVCardString: self goofyCardString.
	self assert: cards size = 1.
	card := cards anyOne.
	
	self assert: card fullname = 'Markus Tschannen'.
	
	self assert: card addresses size = 1.
	address := card addresses anyOne.
	
	self assert: address isHome.
	self deny: address isDomestic.
	self deny: address isInternational.
	self deny: address isParcel.
	self deny: address isPostal.
	self deny: address isPreferred.
	self deny: address isWork.
	
	self assert: address poBox isEmptyOrNil.
	self assert: address extended isEmptyOrNil.
	
	self assert: address street = 'Neufeldstrasse 11'.
	self assert: address extended isEmptyOrNil.
	self assert: address locality = 'Bern'.
	self assert: address region isEmptyOrNil.
	self assert: address postalcode = '3012'.
	self assert: address country = 'Schweiz'.