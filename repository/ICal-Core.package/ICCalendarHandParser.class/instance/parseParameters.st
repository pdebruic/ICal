parsing
parseParameters	
	self parameters: Dictionary new.
	[ self stream peek = $: ]
		whileFalse: [ 
			self parseParameter ].
	