as yet unclassified
renderContentOn: html
	"html bold: 'Loaded versions:'.
	html unorderedList 
		with: [MCWorkingCopy allManagers
				do: [:ea | 
					html listItem: [
						html anchor callback: [self newVersion: ea]; text: 'Save'.
						html space.
						html text: ea description]]]."
	
	html form
		multipart;
		with: [
			html bold: 'Load version from file: '.
			html break.
			html fileUpload callback: [:f | file _ f].
			html space.
			html submitButton callback: [self loadFile]; text: 'Load'.
	].
	html form
		with: [
			html bold: 'Load version from URL: '.
			html break.
			html textInput size: 60; value: 'http://'; callback: [:u | url _ u].
			html space.
			html submitButton callback: [self loadURL]; text: 'Load'.
	].
	html anchor callback: [self saveImage]; text: 'Save Image'. 