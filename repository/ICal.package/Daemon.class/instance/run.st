cron
run
	| delay |
	delay := Delay forSeconds: self delay.
	[self isOn]
		whileTrue: [self check.
			delay wait]