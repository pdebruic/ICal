generated-comments
parserDefinitionComment

	"%start calendar;

calendar:
	contentline*;

contentline:
	name 'name' parameterlist 'parameterlist' "":"" value 'value' <CRLF>
		{self contentline: name parameters: parameterlist value: value};
	
parameterlist:
	("";"" param )*					{#parameterlist};
	
name:
	xname							{#name:}
|	ianatoken						{#name:};
	
param:
	paramname ""="" paramvalue		{#parameter:};
	
value:
	<value>							{#value};
	
xname:
	<xname>							{#first:};
	
ianatoken:
	<ianatoken>						{#first:};

paramname:
	ianatoken						{#parameterName:}
|	xtoken							{#parameterName:};

paramvalue:
	paramtext						{#parameterValue:}
|	quotedstring						{#parameterValue.};

quotedstring:
	<quotedstring> 					{#unquote:};


paramtext:
	<paramtext>						{#first:};

xtoken:
	<xtoken>							{#first:};
"