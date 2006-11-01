as yet unclassified
loadFile
	| reader version |
	reader _ MCVersionReader readerClassForFileNamed: file fileName.
	reader ifNil: [self inform: file fileName, ' is not in a known format'].
	version _ reader versionFromStream: file contents asByteArray readStream.
	version load.