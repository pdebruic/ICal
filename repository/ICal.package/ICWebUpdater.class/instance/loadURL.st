as yet unclassified
loadURL
	| stream version |
	stream _ url asUrl retrieveContents content asByteArray readStream .
	version _ (MCVersionReader readerClassForFileNamed: url) versionFromStream: stream.
	version load.