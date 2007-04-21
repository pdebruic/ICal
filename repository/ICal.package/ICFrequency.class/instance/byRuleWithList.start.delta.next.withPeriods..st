private - filtering
byRuleWithList: aCollection start: aStartBlock delta: aDeltaBlock next: aNextBlock withPeriods: periods
	
	^ self byRuleWithList: aCollection start: aStartBlock delta: aDeltaBlock add: aDeltaBlock next: aNextBlock withPeriods: periods