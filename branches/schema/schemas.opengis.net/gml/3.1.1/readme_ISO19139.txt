ISO DTS 19139 Metadata XML Schema

Based on 2005-09-07 version downloaded from http://eden.ign.fr/xsd/isotc211/view 

This version has been modified as follows:

A. remove <include> cycles involving referenceSystem.xsd
1. move MD_Identifier_Type, MD_Identifier and MD_Identifier_PropertyType from referenceSystem.xsd to citation.xsd
2. in citation.xsd, remove <include schemaLocation="../gmd/referenceSystem.xsd"/>
3. in extent.xsd, replace <include schemaLocation="../gmd/referenceSystem.xsd"/> with <include schemaLocation="../gmd/citation.xsd"/>
4. in identification.xsd, add <include schemaLocation="../gmd/extent.xsd"/> 
5. in dataQuality.xsd, add <include schemaLocation="../gmd/referenceSystem.xsd"/>

B. remove <include> cycle between metadataEntity.xsd and metadataApplication.xsd
1. move DS_Aggregate_Type, DS_Aggregate and DS_Aggregate_PropertyType from metadataApplication.xsd to metadataEntity.xsd
2. move DS_Dataset_Type, DS_Dataset and DS_Dataset_PropertyType from metadataApplication.xsd to metadataEntity.xsd
3. in metadataEntity.xsd, remove <include schemaLocation="../gmd/metadataApplication.xsd"/>

C. remove component definition conflicts due to different modules importing the same external modules from different places, 
fix imports to point to "normative" schemalocations as follows:
1. replace <xs:import namespace="http://www.w3.org/1999/xlink" schemaLocation="../gml/xlink/xlinks.xsd"/> with <xs:import namespace="http://www.w3.org/1999/xlink" schemaLocation="http://schemas.opengis.net/xlink/1.0.0/xlinks.xsd"/> in
gco/basicTypes.xsd
gco/gcoBase.xsd
gmx/extendedTypes.xsd
2. replace <xs:import namespace="http://www.opengis.net/gml" schemaLocation="../../gml/gml.xsd"/> with <xs:import namespace="http://www.opengis.net/gml" schemaLocation="http://schemas.opengis.net/gml/3.1.1/base/gml.xsd"/> in 
gco/basicTypes.xsd
gco/gcoBase.xsd
gmx/codeListItem.xsd
gmx/crsItem.xsd
gmx/uomItem.xsd
gsr/spatialReferencing.xsd
gss/geometry.xsd
gts/temporalObjects.xsd
*** note that this makes the schema use GML 3.1.1, rather than GML 3.2 ***

D. rename XCGEs and XCTs to their GML 3.1 names as follows:
1. in gmx/crsItem.xsd  gml:AbstractCRS -> gml:_CRS
2. in gmx/crsItem.xsd  gml:AbstractCoordinateSystem -> gml:_CoordinateSystem
3. in gmx/crsItem.xsd  gml:AbstractDatum -> gml:_Datum
4. in gmx/crsItem.xsd  gml:AbstractCoordinateOperation -> gml:_CoordinateOperation
5. in gmx/crsItem.xsd  gml:AbstractGeneralOperationParameter -> gml:_GeneralOperationParameter
6. in gmx/crsItem.xsd  gml:TimeCSType -> gml:TemporalCSType, gml:TimeCS -> gml:TemporalCS
7. in gmx/crsItem.xsd  remove ML_AffinceCS components (AffineCS not implemented in GMl 3.1)
8. in gsr/spatialReferencing.xsd  gml:AbstractCRS -> gml:_CRS
9. in gss/geometry.xsd  gml:AbstractGeometry -> gml:_Geometry
10. in gts/temporalObjects.xsd  gml:AbstractTimePrimitive -> gml:_TimePrimitive
11. in gco/gcoBase.xsd  gml:NilReasonType -> gml:NullType

SJDC 2006-01-13


