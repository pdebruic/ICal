testing
testParseMaeve
	| cards card name imid |
	cards := ICCardHandParser parseVCardString: self maeveCardString.
	self assert: cards size = 1.
	card := cards anyOne.
	
	self assert: card fullname = 'Maeve Price'.
	self assert: card title = 'Digital Editor'.
	self assert: card version = 3.0.
	name := card name.
	self assert: name notNil.
	self assert: name familyName = 'Price'.
	self assert: name givenName = 'Maeve'.
	self assert: name additionalNames isEmptyOrNil.
	self assert: name honorificPrefixes isEmptyOrNil.
	self assert: name honorificSuffixes isEmptyOrNil.
	
	self assert: card aimids size = 1.
	imid := card aimids anyOne.
	self assert: imid isPreferred.
	self deny: imid isWork.
	self assert: imid isHome.
	self assert: imid id = 'Mahaevey'.
	
	self assert: card icqids isEmpty.
	
	self assert: card msnids size = 1.
	imid := card msnids anyOne.
	self assert: imid isPreferred.
	self deny: imid isWork.
	self assert: imid isHome.
	self assert: imid id = 'dgu186@hotmail.com'.
	
	self assert: card yahooids isEmpty.
	
	self assert: card url asString = 'http://www.zenediting.com'.
	
	self assert: card categories size = 3.
	self assert: card categories = #('Friends' 'Columbia College Chicago' 'Family') asOrderedCollection.
	
	self shouldnt: [ self assert: card notes size = 1 ] raise: Error.
	self assert: card notes anyOne =
'SMS message
12/22/2003 18:12
wassup

SMS message
12/23/2003 13:12
Hello'
	