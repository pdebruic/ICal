generated-comments
scannerDefinitionComment

	"<ENDL>	: \n | \r | \r \n;
<TIMESTAMP> : \:[0-9]+T[0-9]+Z?<ENDL>;
<TZID>: \;TZID\=[^\r\n\:]*;
<ALARM>: BEGIN\:VALARM ([^\r\n]* <ENDL>)* END\:VALARM <ENDL> ;
<ATTRIBUTE>: <ENDL>? \: [^\r\n]* <ENDL> ([ \t] [^\r\n]* <ENDL>)* ;
<NUMERO>: [0-9]+ <ENDL>;"