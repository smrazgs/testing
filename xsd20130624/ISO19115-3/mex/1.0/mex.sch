<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
  <sch:ns prefix="gco" uri="http://www.isotc211.org/2005/gco"/>
  <sch:ns prefix="mcc" uri="http://www.isotc211.org/2005/mcc/1.0/2013-06-24"/>
  <sch:ns prefix="mex" uri="http://www.isotc211.org/2005/mex/1.0/2013-06-24"/>
  <!--
    ISO 19115-1 mex namespace schematron rules    
    Created by thabermann@hdfgroup.org 20140308
  -->
  <sch:pattern id="conf.metadata-extension.schematron-rules">
    <sch:title>Metadata Extension Requirements</sch:title>
    <sch:p>Schematron rules for the mex namespace</sch:p>
    <sch:rule context="//mex:MD_ExtendedElementInformation">
      <sch:report test="./mex:obligation/mex:MD_ObligationCode='conditional' and not(./mex:condition/gco:CharacterString)">Specify a condition for the element.</sch:report>
      <sch:report test="not(contains('codelist enumeration codelistElement',./mex:dataType/mex:MD_DatatypeCode)) 
        and count(./mex:obligation | ./mex:maximumOccurrence | ./mex:domainValue) != 3">Specify obligation, maximumOccurrence and domainValue for extended element.</sch:report>
      <sch:report test="contains('codelist enumeration codelistElement',./mex:dataType/mex:MD_DatatypeCode) and not(./mex:name/@gco:nilReason='inapplicable')">The name must have @gco:nilReason='inapplicable' for extended codelist, enumeration or codelistElement.</sch:report>
      <sch:report test="contains('codelist enumeration codelistElement',./mex:dataType/mex:MD_DatatypeCode) and not(./mex:code/gco:CharacterString)">Specify a code for the extended codelist, enumeration or codelistElement.</sch:report>
      <sch:report test="contains('codelist enumeration codelistElement',./mex:dataType/mex:MD_DatatypeCode) and not(./mex:conceptName/gco:CharacterString)">Specify a conceptName for the extended codelist, enumeration or codelistElement.</sch:report>
    </sch:rule>
  </sch:pattern>
</sch:schema>
