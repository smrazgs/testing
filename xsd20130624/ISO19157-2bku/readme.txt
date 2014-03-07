Changes in schema to accomodate new mdq namespace

The mdq (Metadata for Data Quality) namespace replaces the dqm (Data Quality Metadata) namespace so that
dqm can be used for Data Quality Measures. In order to do this replacement Ted Habermann
1. renamed the /ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19157/dqm directory as original dqm.
2. copied the dqm and mdq directories from the 19157 schema to /ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19157

3. I added mdq to complete.xsd as an initial test of the schema and transform.

4. Validation Errors
System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19157/mdq/1.0/dataQuality.xsd
Main validation file: /Users/tedhabermann/Dropbox/19115-1/XML/TestCases/Paths/ISO-1/xml/MD_MetadataPaths.xml
Schema: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/complete/1.0/complete.xsd
Engine name: Xerces
Severity: warning
Description: schema_reference.4: Failed to read schema document 'dataQualityMeasure.xsd', because 1) could not find the document; 2) the document could not be read; 3) the root element of the document is not <xsd:schema>.
Start location: 7:53
URL: http://www.w3.org/TR/xmlschema-1/#schema_reference

Commented out reference to dataQualityMeasure.xsd:
<!--<include schemaLocation="dataQualityMeasure.xsd"/>-->

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19157/mdq/1.0/dataQuality.xsd
Main validation file: /Users/tedhabermann/Dropbox/19115-1/XML/TestCases/Paths/ISO-1/xml/MD_MetadataPaths.xml
Schema: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/complete/1.0/complete.xsd
Engine name: Xerces
Severity: error
Description: src-resolve: Cannot resolve the name 'mdq:DQM_SourceReference_PropertyType' to a(n) 'type definition' component.
Start location: 154:86
URL: http://www.w3.org/TR/xmlschema-1/#src-resolve

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19157/mdq/1.0/dataQuality.xsd
Main validation file: /Users/tedhabermann/Dropbox/19115-1/XML/TestCases/Paths/ISO-1/xml/MD_MetadataPaths.xml
Schema: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/complete/1.0/complete.xsd
Engine name: Xerces
Severity: error
Description: src-resolve: Cannot resolve the name 'mdq:DQM_SourceReference_PropertyType' to a(n) 'type definition' component.
Start location: 608:88
URL: http://www.w3.org/TR/xmlschema-1/#src-resolve

There are several references to mdq:DQM_SourceReference_PropertyType that should be CI_Citations.
CI_Citations are also unresolved: fix paths to get CI_Citation:
change
  <import namespace="http://www.isotc211.org/2005/cit/1.0/2013-06-24" schemaLocation="../../../../19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/cit/1.0/cit.xsd"/>
  <import namespace="http://www.isotc211.org/2005/mcc/1.0/2013-06-24" schemaLocation="../../../../19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mcc/1.0/mcc.xsd"/>  
to
  <import namespace="http://www.isotc211.org/2005/cit/1.0/2013-06-24" schemaLocation="../../../ISO19115-3/cit/1.0/cit.xsd"/>
  <import namespace="http://www.isotc211.org/2005/mcc/1.0/2013-06-24" schemaLocation="../../../ISO19115-3/mcc/1.0/mcc.xsd"/>  

change (in DQ_ConformanceResult)
          <element name="specification" type="mdq:DQM_SourceReference_PropertyType"/>
to
          <element name="specification" type="cit:CI_Citation_PropertyType"/>
          
and (in DQ_StandaloneReportInformation_Type)
  <element name="reportReference" type="mdq:DQM_SourceReference_PropertyType"/>
to
  <element name="reportReference" type="cit:CI_Citation_PropertyType"/>
  

Changed all dqm: to mdq: in 19115-1
drop 
<mdq:DQM_SourceReference>
  <mdq:citation>


System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/metadataBase.xsd
Main validation file: /Users/tedhabermann/Dropbox/19115-1/XML/TestCases/Paths/ISO-1/xml/MD_MetadataPaths.xml
Schema: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/complete/1.0/complete.xsd
Engine name: Xerces
Severity: error
Description: src-resolve: Cannot resolve the name 'dqm:DQ_DataQuality_PropertyType' to a(n) 'type definition' component.
Start location: 64:119
URL: http://www.w3.org/TR/xmlschema-1/#src-resolve

Solution: changed 
<element maxOccurs="unbounded" minOccurs="0" name="dataQualityInfo" type="dqm:DQ_DataQuality_PropertyType"/> to
<element maxOccurs="unbounded" minOccurs="0" name="dataQualityInfo" type="mdq:DQ_DataQuality_PropertyType"/>

Changed:
<import namespace="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" schemaLocation="../../../ISO19157/dqm/1.0/dqm.xsd"/> to
<import namespace="http://www.isotc211.org/2005/mdq/1.0/2013-06-24" schemaLocation="../../../ISO19157/mdq/1.0/mdq.xsd"/>

4. Looked for occurrences of dqm in the 19115-3 schema. Found these 11 occurrences in mdb.xsd and metadatabase.xsd 
(interesting that there is no occurrence of dqm in in mds.xsd or md1.xsd). These occurrences of dqm need to be replaced with mdq...:

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/mdb.xsd
Description: ...MLSchema" xmlns:cit="http://www.isotc211.org/2005/cit/1.0/2013-06-24" xmlns:dqm="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" xmlns:lan="http://www.is...
Start location: 1:154
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/mdb.xsd
Description: ...otc211.org/2005/cit/1.0/2013-06-24" xmlns:dqm="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" xmlns:lan="http://www.isotc211.org/2005/lan/1.0/2013-06-24...
Start location: 1:188
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/mdb.xsd
Description: <import namespace="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" schemaLocation="../../../ISO19157/dqm/1.0/dqm.xsd"/>
Start location: 7:51
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/mdb.xsd
Description: <import namespace="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" schemaLocation="../../../ISO19157/dqm/1.0/dqm.xsd"/>
Start location: 7:105
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/mdb.xsd
Description: <import namespace="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" schemaLocation="../../../ISO19157/dqm/1.0/dqm.xsd"/>
Start location: 7:113
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/metadataBase.xsd
Description: ...MLSchema" xmlns:cit="http://www.isotc211.org/2005/cit/1.0/2013-06-24" xmlns:dqm="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" xmlns:gco="http://www.is...
Start location: 1:154
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/metadataBase.xsd
Description: ...otc211.org/2005/cit/1.0/2013-06-24" xmlns:dqm="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:lan="ht...
Start location: 1:188
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/metadataBase.xsd
Description: <import namespace="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" schemaLocation="../../../ISO19157/dqm/1.0/dqm.xsd"/>
Start location: 4:51
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/metadataBase.xsd
Description: <import namespace="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" schemaLocation="../../../ISO19157/dqm/1.0/dqm.xsd"/>
Start location: 4:105
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/metadataBase.xsd
Description: <import namespace="http://www.isotc211.org/2005/dqm/1.0/2013-06-24" schemaLocation="../../../ISO19157/dqm/1.0/dqm.xsd"/>
Start location: 4:113
Length: 3

System ID: /Users/tedhabermann/Dropbox/ISO/19115-3/ImplementationDevelopment/xsd20130624/ISO19115-3/mdb/1.0/metadataBase.xsd
Description: <element maxOccurs="unbounded" minOccurs="0" name="dataQualityInfo" type="dqm:DQ_DataQuality_PropertyType"/>
Start location: 64:85
Length: 3




