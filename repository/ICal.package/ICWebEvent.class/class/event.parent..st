as yet unclassified
event: anICEvent parent: aParent
	^ events
		at: anICEvent hash
		ifAbsent: [| e | 
			e := self newEvent: anICEvent parent: aParent.
			events at: anICEvent hash put: e.
			^ e]