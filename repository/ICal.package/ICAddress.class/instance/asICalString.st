converting
asICalString
	^String streamContents: [ :stream |
		self poBox isNil ifFalse: [
			stream nextPutAll: self poBox asICalString ].
		stream nextPut: $;.

		self extended isNil ifFalse: [
			stream nextPutAll: self extended asICalString ].
		stream nextPut: $;.

		self street isNil ifFalse: [
			stream nextPutAll: self street asICalString ].
		stream nextPut: $;.

		self locality isNil ifFalse: [
			stream nextPutAll: self locality asICalString ].
		stream nextPut: $;.

		self region isNil ifFalse: [
			stream nextPutAll: self region asICalString ].
		stream nextPut: $;.

		self postalcode isNil ifFalse: [
			stream nextPutAll: self postalcode asICalString ].
		stream nextPut: $;.

		self country isNil ifFalse: [
			stream nextPutAll: self country asICalString ] ]