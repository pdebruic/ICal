accessing
hostName
	| name |
	name := NetNameResolver localHostName.
	(name = 'localhost' and: [ self canUseCommandShell ])
		ifTrue: [
			"the vm screw up and returned localhost, this is a 'feature' of the Unix VM
			but fortunately we can use OSProcess and command shell to fix that"
			name := (PipeableOSProcess command: 'hostname') output.
			(PipeableOSProcess command: 'dnsdomainname') output in: [ :domain |
				 domain isEmptyOrNil ifFalse: [ name := name , '.'  , domain ] ] ].
	^name