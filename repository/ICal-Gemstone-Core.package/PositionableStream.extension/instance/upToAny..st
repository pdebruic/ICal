*ical-gemstone-core
upToAny: aCollection
"Answer a subcollection from the current access position to the 
occurrence (if any, but not inclusive) of any objects in the given collection in the receiver. If 
any of these is not in the collection, answer the entire rest of the receiver."
	
| newStream element |
newStream := WriteStream on: itsCollection species new.
[self atEnd or: [aCollection includes: (element := self next)]]
	whileFalse: [newStream nextPut: element].
^newStream contents
