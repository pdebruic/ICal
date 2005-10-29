testing
testParseOscar
	| cards card address |
	cards := ICCardHandParser parseVCardString: self oscarCardString.
	self assert: cards size = 1.
	card := cards anyOne.
	
	self assert: card fullname = 'Oscar2 Nierstrasz'.
	
	self assert: card addresses size = 3.
	address := card addresses first.
	
	self deny: address isHome.
	self deny: address isDomestic.
	self deny: address isInternational.
	self deny: address isParcel.
	self deny: address isPostal.
	self assert: address isPreferred.
	self assert: address isWork.
	
	self assert: address poBox isEmptyOrNil.
	self assert: address extended isEmptyOrNil.
	
	self assert: address street = 'Software Composition Group
IAM, University of Bern
Neubrueckstrasse 10'.
	self assert: address extended isEmptyOrNil.
	self assert: address locality = 'Bern'.
	self assert: address region isEmptyOrNil.
	self assert: address postalcode = 'CH-3012'.
	self assert: address country = 'SWITZERLAND'.
	
	address := card addresses second.
	
	self assert: address isHome.
	self deny: address isDomestic.
	self deny: address isInternational.
	self deny: address isParcel.
	self deny: address isPostal.
	self deny: address isPreferred.
	self deny: address isWork.
	
	self assert: address poBox isEmptyOrNil.
	self assert: address extended isEmptyOrNil.
	
	self assert: address street = 'Fluhmattweg 41'.
	self assert: address extended isEmptyOrNil.
	self assert: address locality = 'Kehrsatz'.
	self assert: address region isEmptyOrNil.
	self assert: address postalcode = '3122'.
	self assert: address country = 'SWITZERLAND'.
	
	address := card addresses third.
	
	self assert: address isHome.
	self deny: address isDomestic.
	self deny: address isInternational.
	self deny: address isParcel.
	self deny: address isPostal.
	self deny: address isPreferred.
	self deny: address isWork.
	
	self assert: address poBox isEmptyOrNil.
	self assert: address extended isEmptyOrNil.
	
	self assert: address street = 'Schuetzenmattstrasse 14, room 103'.
	self assert: address extended isEmptyOrNil.
	self assert: address locality isEmptyOrNil.
	self assert: address region isEmptyOrNil.
	self assert: address postalcode isEmptyOrNil.
	self assert: address country isEmptyOrNil.