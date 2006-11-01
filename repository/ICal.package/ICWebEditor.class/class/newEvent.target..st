as yet unclassified
newEvent: e target: html 
	| editor |
	editor := self new.
	editor event: e;
		 initialize2;
		 target: html.
	^ editor