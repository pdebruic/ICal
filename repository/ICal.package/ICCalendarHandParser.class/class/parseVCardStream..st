instance creation
parseVCardStream: aStream
	| parser |
	parser := self on: aStream.
	parser generator: ICVCardGenerator new.
	parser parse.
	^parser product