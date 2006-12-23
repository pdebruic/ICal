accessing
yearsStartingAt: aNumber

 	^ LazyElement enumerateFrom: aNumber with: [:e| e + interval]