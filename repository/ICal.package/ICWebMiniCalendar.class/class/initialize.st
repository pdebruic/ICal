as yet unclassified
initialize
	
   | application |
   application := self registerAsApplication: 'mini'.
   application  libraries add: SULibrary ;  add: ICWebStyleLibrary.