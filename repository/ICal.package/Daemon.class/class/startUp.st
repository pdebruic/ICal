as yet unclassified
startUp
	"ranscript show: 'initializing Daemons ...'.
	self allInstances
		do: [:d | d checkOnStartUp].
	Transcript show: ' [ok]';
		 cr"