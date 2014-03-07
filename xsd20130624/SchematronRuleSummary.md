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

#mco.sch
**conformance class:**  http://www.isotc211.org/spec/19115-3/1.0/conf/constraints-xml

**test:** /conf/constraints-xml/schematron-rules

*requirements:*

1. /req/constraints-instance/legal-constraints: If a MD_LegalConstraints elements is instantianted, then it MUST have a property value for at least one of accessConstraints, useConstraints, otherConstraints, useLimitation, or releasability.
1. /req/constraints-instance/other-restrictions: A value may be provided for the otherConstraints property ONLY if the code value of an accessConstraints or useConstraints property is equal to "otherRestrictions".
1. /req/constraints-instance/releasability: If a MD_Releasability element is instantiated, then it MUST have a property value for at least one of addressee or statement.

#gex.sch

**conformance class:** 

**test:** /conf/geospatial-extent-xml/schematron-rules

*requirements:*

1. /req/geospatial-extent-instance/value-required
1. /req/geospatial-extent-instance/vertical-crs
