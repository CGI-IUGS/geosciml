<?xml version="1.0" encoding="ISO-8859-1"?>
<?altova_samplexml C:\Documents and Settings\hjulien\Bureau\EBoisvert_WFS-XSLT\wfs.xml?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:wfs="http://www.opengis.net/wfs" xmlns:src="http://apache.org/cocoon/source/1.0" xmlns:moee="http://www.deegree.org/app" xmlns:app="http://www.deegree.org/app" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gwml="http://www.nrcan.gc.ca/xml/gwml/1" xmlns:cv="http://www.opengis.net/cv/0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:gsml="http://www.cgi-iugs.org/xml/GeoSciML/2" xmlns:sf="http://stx.sourceforge.net/2003/functions" xmlns:om="http://www.opengis.net/om/1.0.0" xmlns:gml="http://www.opengis.net/gml" xmlns:sa="http://www.opengis.net/sampling/1.0.0">
	<xsl:variable name="titre">GWML Demo</xsl:variable>
	<xsl:output method="html" version="1.0" encoding="ISO-8859-1" indent="yes"/>
	<xsl:template match="/wfs:FeatureCollection">
		<html>
			<head>
				<title>
					<xsl:value-of select="$titre"/>
				</title>
			</head>
			<body>
			
			<div STYLE="position:absolute; top:15px; left:10px;"><img alt="" src="images/prototype.gif"/></div>
			
			
			
			<table width="700px">
				<tr>
					<td align="left"><img alt="" src="images/logoNRCan.gif" align="left"/></td>
					<td align="right"><img alt="" src="images/canada.gif" align="right"/></td>
				</tr>
			</table>
			
				<h2>
					<xsl:value-of select="$titre"/>
				</h2>
				<xsl:apply-templates select="gml:featureMember"/>
				
				
<table width="700px">
	<tr>
		<td><td align="right"><img alt="" src="images/Lcnp.jpg" align="right"/></td></td>
	</tr>
</table>
				
			</body>
		</html>
	</xsl:template>
	<xsl:template match="gml:featureMember ">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="gwml:WaterWell ">
		<table bgcolor="#f5f5f5" border="1" cellpadding="5">
			<tr>
				<th colspan="2"><strong>Water well</strong></th>
			</tr>
			<tr>
				<td width="350px">
					<strong>Identification : </strong>
					<xsl:value-of select="@gml:id"/>
					<br/>
					<xsl:apply-templates select="gwml:contact[@xlink:title='custodian']"/>
					<br/>
					<xsl:apply-templates select="sa:length"/>
					<br/>
					<strong>Elevation : </strong><xsl:value-of select="gwml:referenceElevation"/><xsl:text> </xsl:text><xsl:value-of select="gwml:referenceElevation/@uom"/>
					<br/>
					<xsl:apply-templates select="gwml:wellLocation"/>
					<br/>
					<xsl:apply-templates select="sa:relatedObservation/om:Observation"/>
					<br/>
				</td>
				<td valign="top"><strong>Well log : </strong><br />
					<img  alt="Well log" src="http://s5-stf-ngwd.nrn.nrcan.gc.ca:8080/cocoon/devHeryk/wfs/wfs2svgGraph.png?FEATUREID={@gml:id}"/>
				</td>
			</tr>
		</table>
		<br/>
		<br/>
	</xsl:template>
	
	<xsl:template match="gwml:contact">
	<strong>Source : 
		<xsl:choose>
			<xsl:when test="@xlink:href='urn:x-ngwd:contact:custodian:qc:mef'">Le ministère du Développement durable, de l'Environnement et des Parcs du Québec</xsl:when>
			<xsl:when test="@xlink:href='urn:x-ngwd:contact:custodian:on:moee'">Ontario Ministry of the Environment</xsl:when>
			<xsl:otherwise><xsl:value-of select="@xlink:href"/></xsl:otherwise>
		</xsl:choose>
	</strong>
	</xsl:template>
	
	<xsl:template match="gwml:wellLocation">
		<strong>Spatial localisation : </strong>
		<br/>
		<xsl:if test="gml:Point[@srsName='EPSG:4326']">
			<xsl:call-template name="bboxMap">
				<xsl:with-param name="bbox">
					<xsl:value-of select="gml:Point/gml:coordinates"/>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="sa:length">
		<strong>Length : </strong>
		<xsl:value-of select="."/>
		<xsl:if test="@uom"><xsl:text> </xsl:text><xsl:value-of select="@uom"/></xsl:if>
	</xsl:template>
	<xsl:template match="om:Observation">
		<strong>Observation<xsl:if test="om:observedProperty[@xlink:href='urn:ogc:def:phenomenon:CGI:2007:lithology']"> - Lithology</xsl:if> : </strong>
		<xsl:apply-templates select="om:result"/>
	</xsl:template>
	<xsl:template match="om:result">		
				<xsl:apply-templates select="cv:CV_DiscreteCoverage"/>
	</xsl:template>
	
<xsl:template match="cv:CV_DiscreteCoverage">

<xsl:variable name="fromToResults"><results>
<xsl:for-each select="cv:element"><xsl:sort select="substring-before(cv:CV_GeometryValuePair/cv:geometry/cv:CV_DomainObject/cv:spatialElement/gml:LineString/gml:coordinates,' ')" data-type="number"/><result><from><xsl:value-of select="substring-before(cv:CV_GeometryValuePair/cv:geometry/cv:CV_DomainObject/cv:spatialElement/gml:LineString/gml:coordinates,' ')"/></from><to><xsl:value-of select="substring-after(cv:CV_GeometryValuePair/cv:geometry/cv:CV_DomainObject/cv:spatialElement/gml:LineString/gml:coordinates,' ')"/></to><description><xsl:for-each select="cv:CV_GeometryValuePair/cv:value/*"><xsl:value-of select="gml:description"/>, <xsl:value-of select="gsml:consolidationDegree/gsml:CGI_TermValue/gsml:value"/></xsl:for-each></description></result></xsl:for-each>
</results></xsl:variable>


	<table bgcolor="#ffffff" border="1">
		<tr>
			<th>Depth from</th>
			<th>Depth to</th>
			<th>Description</th>
		</tr>
		<xsl:for-each select="$fromToResults/results/result">
		<tr>
			<td><xsl:value-of select="from"/></td>
			<td><xsl:value-of select="to"/></td>
			<td><xsl:value-of select="description"/></td>
		</tr>
		
		</xsl:for-each>

	</table>
</xsl:template>	
	
	
	<xsl:template name="bboxMap">
		<xsl:param name="bbox"/>
		<xsl:variable name="newBbox">
			<xsl:choose>
				<xsl:when test="contains($bbox,' ')">
					<xsl:value-of select="replace($bbox,' ',';')"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$bbox"/>;<xsl:value-of select="$bbox"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<img alt="Spatial localisation" src="http://ngwd-bdnes.cits.nrcan.gc.ca/service/utilitaires/carteSVG/bboxMap200.png?bbox={$newBbox}&amp;style=fill:red;stroke:red;stroke-width:1;fill-opacity:0.2;stroke-opacity:0.9"/>
	</xsl:template>
	<xsl:template match="*"/>
</xsl:stylesheet>
