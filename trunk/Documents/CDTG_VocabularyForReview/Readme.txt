

CGI URNs in spreadsheets are generated from 'Term' column string using formula '=SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(TRIM(LOWER(Term)),", ","_"), ":","_"),"-", "_")," ", "_")'
This formula replaces "-", " " (space),", ", ":" with "_". That is any special character or space in the term becomes an underscore, and all characters are lower case.

Hkey is blank for 'abstract' terms that are in spreadsheets to label parts of vocabulary. These do not map to CGI URNs and should not be included in the vocabularies.


Cell R3C2 contains the URN prefix for classifier names. This cell is named 'CGI_Vocabulary_Prefix'
CGI Vocabulary Prefix	urn:cgi:classifier:CGI:SimpleLithology

Cell R4C2 contains the version number for this version of the vocabulary. The version number is the year and month of release for the vocabulary. This cell is named 'version' in each spreadsheet
Version	200811

The 'GeoSciML Draft' worksheet contains the actual vocabulary. The column CGI_URN contains the identifier for each term.

The full CGI_URN for each term is the concatenation of CGI_Vocabulary_Prefix & Version & CGI_URN

The ClassifierScheme name is the last part of the CGI_Vocabulary_Prefix string.