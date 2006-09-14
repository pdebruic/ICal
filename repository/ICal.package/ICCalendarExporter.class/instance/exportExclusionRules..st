exporting-values
exportExclusionRules: aCollection
	aCollection do: [ :each |
		self exportExclusionRule: each ]