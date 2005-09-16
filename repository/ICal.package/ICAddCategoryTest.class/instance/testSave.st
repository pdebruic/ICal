tests
testSave
	| savedCategory category |
	category := ICCategory new
				color: 'green';
				title: 'greenpeace';
				explanation: 'this is a category for all greenpeace events';
				yourself.
	calendar addCategory: category.
	savedCategory := calendar categories at: 3.
	self assert: calendar categories size = 3.
	self assert: savedCategory title = 'greenpeace'.
	self assert: savedCategory color = 'green'.
	self assert: savedCategory explanation 
				= 'this is a category for all greenpeace events'