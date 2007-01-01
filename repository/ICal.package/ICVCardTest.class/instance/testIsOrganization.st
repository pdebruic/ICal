testing-exporting
testIsOrganization
	| card |
	card := ICVCard new
		fullname: 'Tantek Çelik';
		yourself.
	self deny: card isOrganization.
	card organization: (ICOrganization new
		name: 'Technorati';
		yourself).
	self deny: card isOrganization.
	card fullname: 'Technorati'.
	self assert: card isOrganization