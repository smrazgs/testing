# metadata-core.sch
**conformance class** http://www.isotc211.org/spec/19115-3/1.0/conf/metadata-core-instance

A property element instance MUST have exactly one of:

1. inline content (by-value) that is a schema-valid XML Class instance, or 
1. an xlink:href attribute (by-reference value), or 
1. a gco:nilReason attribute (nil value). 


#cit.sch
**conformance class:**  http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml

**test:** /conf/citation-xml/schematron-rules

*requirements:* 

1. /req/citation/individual-name: 
Any instance of CI_Individual MUST have either a name property value or a positionName property value
2. /req/citation/organisation-name: 
Any instance of CI_Organisation MUST have either a name property value or a logo property value



