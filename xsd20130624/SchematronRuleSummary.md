# metadata-core.sch
**conformance class** http://www.isotc211.org/spec/19115-3/1.0/conf/metadata-core-instance

**conformance dependencies:** NONE

**test:** /req/metadata-core-instance/property-type-content

*requirements:*

A property element instance MUST have exactly one of:

1. inline content (by-value) that is a schema-valid XML Class instance, or 
1. an xlink:href attribute (by-reference value), or 
1. a gco:nilReason attribute (nil value). 

#mcc:  Metadata common classes

**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

No schematron tests required for this class (but there is a dependency on cit)

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/metadata-core-instance
- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml


note the circular dependencies between conf/common-classes-xml and conf/citation-xml.  Essentially one schematron will need to test both of these conformance classes in order to avoid circular imports.

#cit.sch
**conformance class:**  http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/metadata-core-instance

note the circular dependencies between conf/common-classes-xml and conf/citation-xml.  Essentially one schematron will need to test both of these conformance classes in order to avoid circular imports.

**test:** /conf/citation-xml/schematron-rules

*requirements:* 

1. /req/citation/individual-name: 
Any instance of CI_Individual MUST have either a name property value or a positionName property value
2. /req/citation/organisation-name: 
Any instance of CI_Organisation MUST have either a name property value or a logo property value

#lan:  Language localization

**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/language-localization-xml

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml

note that citation-xml has a depencency on common-classes-xml 

no schematron validation required

#mas.sch: Application schema 
**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/application-schema-xml

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

No schematron rules required to validate this class

#mco.sch: Constraints
**conformance class:**  http://www.isotc211.org/spec/19115-3/1.0/conf/constraints-xml

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

**test:** /conf/constraints-xml/schematron-rules

*requirements:*

1. /req/constraints-instance/legal-constraints: If a MD_LegalConstraints elements is instantiated, then it MUST have a property value for at least one of accessConstraints, useConstraints, otherConstraints, useLimitation, or releasability.
1. /req/constraints-instance/other-restrictions: A value may be provided for the otherConstraints property ONLY if the code value of an accessConstraints or useConstraints property is equal to "otherRestrictions".
1. /req/constraints-instance/releasability: If a MD_Releasability element is instantiated, then it MUST have a property value for at least one of addressee or statement.

#gex.sch: Geospatial extent 

**conformance class:**  http://www.isotc211.org/spec/19115-3/1.0/conf/geospatial-extent-xml

**conformance dependencies:** 

- http://www.isotc211.org/spec/19115-3/1.0/conf/reference-system-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

**test:** /conf/geospatial-extent-xml/schematron-rules

*requirements:*

1. /req/geospatial-extent-instance/value-required: If an EX_Extent element is instantiated, then a value for either description, geographicElement, temporalElement or verticalElement MUST be present.
1. /req/geospatial-extent-instance/vertical-crs:  If an EX_VerticalExtent element is instantiated, then a value for either verticalCRSid or verticalCRS MUST be present.

#mmi.sch: Maintenance information

**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/maintenance-information-xml

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

**test:** /conf/maintenance-information-xml/schematron-rules

*requirements:*

1. /req/maintenance-information/frequency: If a MD_MaintenanceInformation element is instantiated, then a value for either the maintenanceAndUpdateFrequency or userDefinedMaintenanceFrequency property must be present.

#mpc.sch: Portrayal catalogue
**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/portrayal-catalogue-xml

**conformance dependencies:** 

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

no schematron rules required for validation

#mrc.sch: Resource content 

**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/resource-content-xml

**Conformance Dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/language-localization-xml

note that language-localization-xml has dependency on citation-xml, so should only need to include lan.sch

**test:**/conf/resource-content-xml/schematron-rules

*requirements:*

1. /req/resource-content-instance/feature-catalogue
If a MD_FeatureCatalogueDescription is instantiated, then either the value for includedWithDataset MUST be 'true', or a well formed and valid MD_FeatureCatalogue instance must be included in the metadata record, or a value MUST be provided for featureCatalogueCitation. 
1. /req/resource-content-instance/inline-feature-catalogue
If a MD_FeatureCatalogue instance is included with an inline featureCatalogue, the XML schema for the  http://www.isotc211.org/2005/gfc namespace must be imported in the instance document.
1. /req/resource-content-instance/dimension-units
If a MD_SampleDimension element is instantiated and at least one of the maxValue, minValue or meanValue properties has a value, then a value MUST be provided for the units property. 
1. /req/resource-content-instance/band-dimension-units
If a MD_Band element is instantiated , then the value of the units property MUST be a unit of length.

#mrd.sch: Resource distribution 

**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/resource-distribution-xml

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

**test:** /conf/resource-distribution-xml/schematron-rules

*requirements:*

1. /req/resource-distribution/medium-density: If a MD_Medium element is instantiated and a value for the density property is present, then a value for the densityUnits property MUST be provided

#mri.sch: Resource identification 

**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/resource-identification-xml

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

**test:** /conf/resource-identification-xml/schematron-rules

*requirements:*

1. /req/resource-identification-instance/dataset-extent
If no value for the MD_Metadata.metadataScope property is provided, or if the value of MD_Metadata.metadataScope.MD_MetadataScope. resourceScope property is equal to "dataset", then an instance of at least one of EX_GeographicBoundingBox or EX_GeographicDescription MUST be present in the metadata instance.
1. /req/resource-identification-instance/topic-category
If no value for the MD_Metadata.metadataScope property is provided, or if the value of MD_Metadata.metadataScope.MD_MetadataScope. resourceScope property is equal to "dataset" or equal to "series", then a value for topicCategory MUST be provided.
1. /req/resource-identification-instance/associated-resource
If a MD_AssociatedResource element is instantiated, then a value for either the name or metadataReference property MUST be provided. 

*Recommendation:* If the resource described by a metadata instance contains textual information, then a value SHOULD be provided for MD_DataIdentification defaultLocale.

#mrl.sch: Resource lineage

**conformance class:**  http://www.isotc211.org/spec/19115-3/1.0/conf/lineage-xml

**conformance dependencies:**

- http://www.isotc211.org/spec/19115-3/1.0/conf/citation-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml
- http://www.isotc211.org/spec/19115-3/1.0/conf/resource-identification-xml

**test:** /conf/lineage-xml/schematron-rules

*Requirements:*

1. /req/lineage-instance/lineage-content: If a LI_Lineage element is instantiated and no value is provided for the LI_Lineage.statement property, then at least one of processStep or source MUST have a value.
2. /req/lineage-instance/source: If a LI_Source element is instantiated, then either the description or scope property MUST have a value.

#mrs.sch: Resource reference system

**conformance class:** http://www.isotc211.org/spec/19115-3/1.0/conf/reference-system-xml

**conformance dependencies:** 

- http://www.isotc211.org/spec/19115-3/1.0/conf/common-classes-xml

No schematron rules specific to this package

