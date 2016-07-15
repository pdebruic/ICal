*ICal-Core
asVCardString
	^ String streamContents: [:aStream |self  print24: true showSeconds: true on: aStream ]