private
applyBlock: aBlock toRules: aRuleCollection
	|dates|

	dates := aBlock value: aRuleCollection first.
	
	aRuleCollection allButFirst do: [:rule| dates := dates mergeUnique: (aBlock value: rule) ].

	^ dates