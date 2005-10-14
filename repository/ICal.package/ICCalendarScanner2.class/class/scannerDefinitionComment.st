generated-comments
scannerDefinitionComment

	"<ALPHA> : [A-Za-z];

#0-9
<DIGIT> : \d;

#carriage return
<CR> : \r;

#Controls
<CTL> : [\x00-\x08] | [\x0A-\0x1F] | \x7F ;

#Quotation Mark
<DQUOTE> : \x22;

#line feed
<LF> : \f;

#Internet standard newline
<CRLF> : <CR> <LF>;

<HTAB> : \t;

<SPACE> : \x20;

<WSP> : <SPACE> | <HTAB>;

#Use restricted by charset parameter
#on outer MIME object (UTF-8 preferred)
<NONUSASCII> : [\x80-\xF8];

#Any textual character
<VALUECHAR> : <WSP> | [\x21-\x7E] | <NONUSASCII>;

#Any character except CTLs and DQUOTE
<QSAFECHAR> : <WSP> | [\x21] | [\x23-\x7E] | <NONUSASCII>; 

#Any character except CTLs, DQUOTE, "";"", "":"", "",""
<SAFECHAR> : <WSP> | [\x21] | [\x23-\x2B] | [\x2D-\x39] | [\x3C-\x7E] | <NONUSASCII>; 

<ianatoken> : (<ALPHA> | <DIGIT> | ""-"")+ ;

<xname> : (""X-"" | ""x-"") [<vendorid> ""-""]? (<ALPHA> | <DIGIT> | ""-"")+;

<paramtext> : <SAFECHAR>*;

<quotedstring> : <DQUOTE> <QSAFECHAR>* <DQUOTE>;

<value> : <VALUECHAR>*;

<xtoken> : (""X-"" | ""x-"") | (<ALPHA> | <DIGIT> | ""-"")+;

<vendorid> : (<ALPHA> | <DIGIT>) (<ALPHA> | <DIGIT>) (<ALPHA> | <DIGIT>)+;



"