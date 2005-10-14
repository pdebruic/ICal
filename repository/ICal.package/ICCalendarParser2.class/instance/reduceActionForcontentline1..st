generated-reduction actions
reduceActionForcontentline1: nodes 
	^self 
		contentline: (nodes at: 1)
		parameters: (nodes at: 2)
		value: (nodes at: 4)