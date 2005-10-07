accessing
processId
	^(OSProcess thisOSProcess pid hex copyAfter: $r) asLowercase