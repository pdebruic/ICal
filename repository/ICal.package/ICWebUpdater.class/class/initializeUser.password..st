as yet unclassified
initializeUser: aName password: aString
	"self initializeUser: 'Foo' password: 'bar' "
	| application |
	application :=
		self registerAsApplication: 'webupdater'.
	application configuration
		addAncestor: WAAuthConfiguration localConfiguration.
	
	application preferenceAt: #login put: aName.
	application preferenceAt: #password put: aString.

	^ application