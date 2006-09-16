printing
printTime
	| st |
	^ todo due isNil
		ifTrue: ['']
		ifFalse: [st := ReadWriteStream on: String new.
			"todo due asTime
				print24: true
				showSeconds: false
				on: st."
				todo due asDate printOn: st format: #(2 1 3 $  3 1 1).
			st close.
			^ st contents]