testing
testParseAvi
	| cards card address name phoneNumber |
	cards := ICCardHandParser parseVCardString: self aviCardString.
	self assert: cards size = 1.
	card := cards anyOne.
	
	self assert: card fullname = 'Avi Bryant'.
	name := card name.
	self assert: name notNil.
	self assert: name familyName = 'Bryant'.
	self assert: name givenName = 'Avi'.
	self assert: name additionalNames isEmptyOrNil.
	self assert: name honorificPrefixes isEmptyOrNil.
	self assert: name honorificSuffixes isEmptyOrNil.
	
	self assert: card addresses size = 1.
	address := card addresses anyOne.
	
	self assert: address isHome.
	self deny: address isDomestic.
	self deny: address isInternational.
	self deny: address isParcel.
	self deny: address isPostal.
	self assert: address isPreferred.
	self deny: address isWork.
	
	self assert: address poBox isEmptyOrNil.
	self assert: address extended isEmptyOrNil.
	
	self assert: address street = '146 E. 18 Ave'.
	self assert: address extended isEmptyOrNil.
	self assert: address locality = 'Vancouver'.
	self assert: address region = 'BC'.
	self assert: address postalcode = 'V5V 1E3'.
	self assert: address country = 'Canada'.
	
	self assert: card phoneNumbers size = 1.
	phoneNumber := card phoneNumbers first.
	self assert: phoneNumber number = '(778) 863-6321'.
	self assert: phoneNumber isHome.
	self assert: phoneNumber isPreferred.
	self deny: phoneNumber isWork.
	self deny: phoneNumber isBulletinBoard.
	self deny: phoneNumber isCar.
	self deny: phoneNumber isCellular.
	self deny: phoneNumber isFax.
	self deny: phoneNumber isISDN.
	self deny: phoneNumber isModem.
	self deny: phoneNumber isPager.
	self deny: phoneNumber isVoice.
	self deny: phoneNumber isVoiceMessage.