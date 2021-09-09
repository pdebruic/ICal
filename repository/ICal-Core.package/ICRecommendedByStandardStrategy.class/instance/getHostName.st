private
getHostName
	| name |
	name := NetNameResolver localHostName.
	(name = 'localhost'
		and: [ self canUseCommandShell and: [ self isUnix ] ])
		ifTrue:
			[ "the vm screw up and returned localhost, this is a 'feature' of the Unix VM
				but fortunately we can use OSProcess and command shell to fix that"
			name := (Smalltalk at: #UnixProcess) waitForCommandOutput: 'hostname'.
			((Smalltalk at: #UnixProcess) waitForCommandOutput: 'dnsdomainname')
				output
				in: [ :domain | 
					domain isEmptyOrNil
						ifFalse: [ name := name , '.' , domain ] ] ].
	^ name