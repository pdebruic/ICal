private
unsplit: aString
	^aString splitAtCommas
		collect: [ :each | String fromICalString: each ]
		thenSelect: [ :each | each isEmptyOrNil not ]