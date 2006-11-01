adding
add: anObject 
	self addLast: anObject.
	daemon add: anObject.
	^ anObject