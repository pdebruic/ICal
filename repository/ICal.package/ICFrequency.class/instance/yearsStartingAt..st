private-loop
yearsStartingAt: aNumber

 	^ LazyElement enumerateFrom: aNumber with: [:e| e + 1]