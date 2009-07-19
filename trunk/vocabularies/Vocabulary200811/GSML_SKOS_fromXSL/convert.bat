rem batch file to convert excel spreadsheets to SKOS rdf documents.

echo on

rem @echo off
setlocal
rem this batch file will read Excel spreadsheets from the subversion/tags/vocabulary_200811 directory and write to this directory
rem ^{.*}_(DraftForReview|CodeList).xls$
rem XL2XML /xls:"%~dp0\0" /GSML-CC-CDTG:"%~dp0GeoSciML\\Vocab_\1_CGI.xml" /validate:yes >> %log%

rem this is the directory that contains the source Excel spreadsheets
set vocabHome=C:\aWorkspace\CGI_GeoSciML\ConceptVocabWorkingGroup\Vocabulary200811

rem this is the directory where the xl2xml executable resides. It has a subdirectory named rules that contains the 
rem	xslt that does the conversion from xml exported by Excel into GeoSciML. The XSLT name is the same as the second argument 
rem 	passed to xl2xml 
set progHome=C:\aWorkspace\AuScope\AuScopeSVN\Utilities\XL2XML\Redist

rem ProgHome/rules/xsltTransform.xslt must exist. It is the transformation from the Excel XML output to 
	rem GeoSciML (or whatever you're converting to!)
set xsltTransform=GSML_SKOS_fromXSL

rem this is the directory from which this batch file is run, and where the xml output will be put.
set olddir="%cd%"

set log="%~dp0__%DATE:~10,4%%DATE:~7,2%%DATE:~4,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.log"

rem change to yes if online so can access normative schema
set valFlag=no  


cd %progHome%

rem note paths for xml docs puts them in same directory from which the batch file is run

XL2XML /xls:"%vocabHome%\CompositionCategory200811.xls" /%xsltTransform%:"%olddir%\CompositionCategory200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\CompoundMaterialConstituentPartRole200811.xls" /%xsltTransform%:"%olddir%\CompoundMaterialConstituentPartRole200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ConsolidationDegree200811.xls" /%xsltTransform%:"%olddir%\ConsolidationDegree200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ContactCharacter200811.xls" /%xsltTransform%:"%olddir%\ContactCharacter200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ContactType200811.xls" /%xsltTransform%:"%olddir%\ContactType200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ConventionCode_CodeList200811.xls" /%xsltTransform%:"%olddir%\ConventionCode200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\DescriptionPurpose_CodeList200811.xls" /%xsltTransform%:"%olddir%\DescriptionPurpose200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\DeterminationMethod_orientation200811.xls" /%xsltTransform%:"%olddir%\DeterminationMethod_orientation200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\EventEnvironment200811.xls" /%xsltTransform%:"%olddir%\EventEnvironment200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\EventProcess200811.xls" /%xsltTransform%:"%olddir%\EventProcess200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\FaultMovementSense200811.xls" /%xsltTransform%:"%olddir%\FaultMovementSense200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\FaultMovementType200811.xls" /%xsltTransform%:"%olddir%\FaultMovementType200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\GeneticCategory200811.xls" /%xsltTransform%:"%olddir%\GeneticCategory200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\GeologicUnitMorphology200811.xls" /%xsltTransform%:"%olddir%\GeologicUnitMorphology200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\GeologicUnitPartRole200811.xls" /%xsltTransform%:"%olddir%\GeologicUnitPartRole200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\GeologicUnitType200811.xls" /%xsltTransform%:"%olddir%\GeologicUnitType200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\MappedFeatureObservationMethod200811.xls" /%xsltTransform%:"%olddir%\MappedFeatureObservationMethod200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ParticleAspectRatio200811.xls" /%xsltTransform%:"%olddir%\ParticleAspectRatio200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ParticleShape200811.xls" /%xsltTransform%:"%olddir%\ParticleShape200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ParticleType200811.xls" /%xsltTransform%:"%olddir%\ParticleType200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ProportionTerm200811.xls" /%xsltTransform%:"%olddir%\ProportionTerm200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\SimpleLithology200811.xls" /%xsltTransform%:"%olddir%\SimpleLithology200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\StratigraphicRank200811.xls" /%xsltTransform%:"%olddir%\StratigraphicRank.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\ValueQualifier_CodeList200811.xls" /%xsltTransform%:"%olddir%\ValueQualifier200811.rdf" /validate:%valFlag% >> %log%

XL2XML /xls:"%vocabHome%\VocabularyRelation200811.xls" /%xsltTransform%:"%olddir%\VocabularyRelation200811.rdf" /validate:%valFlag% >> %log%

cd %olddir%

endlocal
