<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' 
	xmlns:gml='http://www.opengis.net/gml' 
	xmlns:ogc='http://www.opengis.net/ogc' 
	xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' 
	xmlns:se="http://www.opengis.net/se"
	version='1.1.0'
	xmlns='http://www.opengis.net/sld'
	xsi:schemaLocation='http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd' 
	xmlns:gsmlp='http://xmlns.geosciml.org/geosciml-portrayal/2.0'>
	<se:Name>GeoSciMLPortrayal_geologicUnitView_AgePortrayal</se:Name>
	<se:Description>
		<se:Title>Geologic units portrayed according to age</se:Title>
		<se:Abstract>Style for use with a WMS layer based on data encoded according to the 
			GeoSciML-Portrayal GeologicUnitView feature type; requires that the data uses URIs for 
			the ICS geologic time scale named eras to populate the representativeAge_uri field.
			URIs are enumerageted in the content model 
			available at http://schemas.usgin.org/files/geologic-units/2.0/GeoSciML.xlsx. 
			This symbology describes geologic ages with specific RGB color values according to 
			the 2013 ICS (International Commission on Stratigraphy) time scale 
			(http://www.stratigraphy.org/index.php/ics-chart-timescale).</se:Abstract>
	</se:Description>

	<NamedLayer>
		<se:Name><![CDATA[gsmlp:GeologicUnitView]]></se:Name>
		<UserStyle>
			<se:Description>
			<se:Title>Symbology for age portrayal of GeoSciML-Portrayal GeologicUnitView features</se:Title>
			<se:Abstract>Style for use with a WMS layer based on data encoded according to the 
					GeoSciML-Portrayal GeologicUnitView feature type; requires that the data uses URIs for 
					the ICS geologic time scale named eras to populate the representativeAge_uri field.
					URIs are enumerageted in the content model 
					available at http://schemas.usgin.org/files/geologic-units/2.0/GeoSciML.xlsx. 
					This symbology describes geologic ages with specific RGB color values according to 
					the 2013 ICS (International Commission on Stratigraphy) time scale 
					(http://www.stratigraphy.org/index.php/ics-chart-timescale).</se:Abstract>
			</se:Description>
			<se:FeatureTypeStyle>
				<se:Rule>
					<se:Name><![CDATA[Phanerozoic]]></se:Name>
					<se:Description><se:Title><![CDATA[Phanerozoic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Phanerozoic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#9ad9dd</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cenozoic]]></se:Name>
					<se:Description><se:Title><![CDATA[Cenozoic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Cenozoic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f2f91d</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Quaternary]]></se:Name>
					<se:Description><se:Title><![CDATA[Quaternary]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Quaternary]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f9f97f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Holocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Holocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Holocene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fef2e0</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Pleistocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Pleistocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Pleistocene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fff2ae</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Upper Pleistocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Upper Pleistocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/UpperPleistocene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fff2d3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Middle Pleistocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Middle Pleistocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Ionian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fff2c7</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Calabrian]]></se:Name>
					<se:Description><se:Title><![CDATA[Calabrian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Calabrian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fff2ba</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Gelasian]]></se:Name>
					<se:Description><se:Title><![CDATA[Gelasian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Gelasian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffedb3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Neogene]]></se:Name>
					<se:Description><se:Title><![CDATA[Neogene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Neogene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffe619</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Pliocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Pliocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Pliocene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffff99</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Piacenzian]]></se:Name>
					<se:Description><se:Title><![CDATA[Piacenzian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Piacenzian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffffbf</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Zanclean]]></se:Name>
					<se:Description><se:Title><![CDATA[Zanclean]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Zanclean]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffffb3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Miocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Miocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Miocene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffff00</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Messinian]]></se:Name>
					<se:Description><se:Title><![CDATA[Messinian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Messinian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffff73</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Tortonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Tortonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Tortonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffff66</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Serravallian]]></se:Name>
					<se:Description><se:Title><![CDATA[Serravallian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Serravallian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffff59</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Langhian]]></se:Name>
					<se:Description><se:Title><![CDATA[Langhian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Langhian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffff4d</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Burdigalian]]></se:Name>
					<se:Description><se:Title><![CDATA[Burdigalian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Burdigalian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffff41</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Aquitanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Aquitanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Aquitanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ffff33</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Paleogene]]></se:Name>
					<se:Description><se:Title><![CDATA[Paleogene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Paleogene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fd9a52</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Oligocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Oligocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Oligocene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdc07a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Chattian]]></se:Name>
					<se:Description><se:Title><![CDATA[Chattian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Chattian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fee6aa</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Rupelian]]></se:Name>
					<se:Description><se:Title><![CDATA[Rupelian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Rupelian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fed99a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Eocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Eocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Eocene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdb46c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Priabonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Priabonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Priabonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdcda1</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Bartonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Bartonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Bartonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdc091</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lutetian]]></se:Name>
					<se:Description><se:Title><![CDATA[Lutetian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Lutetian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fcb482</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Ypresian]]></se:Name>
					<se:Description><se:Title><![CDATA[Ypresian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Ypresian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fca773</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Paleocene]]></se:Name>
					<se:Description><se:Title><![CDATA[Paleocene]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Paleocene]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fda75f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Thanetian]]></se:Name>
					<se:Description><se:Title><![CDATA[Thanetian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Thanetian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdbf6f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Selandian]]></se:Name>
					<se:Description><se:Title><![CDATA[Selandian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Selandian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#febf65</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Danian]]></se:Name>
					<se:Description><se:Title><![CDATA[Danian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Danian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdb462</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Mesozoic]]></se:Name>
					<se:Description><se:Title><![CDATA[Mesozoic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Mesozoic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#67c5ca</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cretaceous]]></se:Name>
					<se:Description><se:Title><![CDATA[Cretaceous]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Cretaceous]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#7fc64e</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Upper Cretaceous]]></se:Name>
					<se:Description><se:Title><![CDATA[Upper Cretaceous]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6d84a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Maastrichtian]]></se:Name>
					<se:Description><se:Title><![CDATA[Maastrichtian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Maastrichtian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f2fa8c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Campanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Campanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Campanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e6f47f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Santonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Santonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Santonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#d9ef74</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Coniacian]]></se:Name>
					<se:Description><se:Title><![CDATA[Coniacian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Coniacian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#cce968</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Turonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Turonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Turonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfe35d</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cenomanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Cenomanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Cenomanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3de53</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lower Cretaceous]]></se:Name>
					<se:Description><se:Title><![CDATA[Lower Cretaceous]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#8ccd57</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Albian]]></se:Name>
					<se:Description><se:Title><![CDATA[Albian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Albian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ccea97</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Aptian]]></se:Name>
					<se:Description><se:Title><![CDATA[Aptian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Aptian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfe48a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Barremian]]></se:Name>
					<se:Description><se:Title><![CDATA[Barremian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Barremian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3df7f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Hauterivian]]></se:Name>
					<se:Description><se:Title><![CDATA[Hauterivian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Hauterivian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6d975</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Valanginian]]></se:Name>
					<se:Description><se:Title><![CDATA[Valanginian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Valanginian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99d36a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Berriasian]]></se:Name>
					<se:Description><se:Title><![CDATA[Berriasian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Berriasian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#8ccd60</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Jurassic]]></se:Name>
					<se:Description><se:Title><![CDATA[Jurassic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Jurassic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#34b2c9</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Upper Jurassic]]></se:Name>
					<se:Description><se:Title><![CDATA[Upper Jurassic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3e3ee</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Tithonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Tithonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Tithonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#d9f1f7</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Kimmeridgian]]></se:Name>
					<se:Description><se:Title><![CDATA[Kimmeridgian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Kimmeridgian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ccecf4</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Oxfordian]]></se:Name>
					<se:Description><se:Title><![CDATA[Oxfordian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Oxfordian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfe7f1</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Middle Jurassic]]></se:Name>
					<se:Description><se:Title><![CDATA[Middle Jurassic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#80cfd8</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Callovian]]></se:Name>
					<se:Description><se:Title><![CDATA[Callovian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Callovian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfe7e5</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Bathonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Bathonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Bathonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3e2e3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Bajocian]]></se:Name>
					<se:Description><se:Title><![CDATA[Bajocian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Bajocian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6dde0</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Aalenian]]></se:Name>
					<se:Description><se:Title><![CDATA[Aalenian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Aalenian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#9ad9dd</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lower Jurassic]]></se:Name>
					<se:Description><se:Title><![CDATA[Lower Jurassic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#42aed0</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Toarcian]]></se:Name>
					<se:Description><se:Title><![CDATA[Toarcian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Toarcian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99cee3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Pliensbachian]]></se:Name>
					<se:Description><se:Title><![CDATA[Pliensbachian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Pliensbachian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#80c5dd</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Sinemurian]]></se:Name>
					<se:Description><se:Title><![CDATA[Sinemurian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Sinemurian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#67bcd8</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Hettangian]]></se:Name>
					<se:Description><se:Title><![CDATA[Hettangian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Hettangian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#4eb3d3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Triassic]]></se:Name>
					<se:Description><se:Title><![CDATA[Triassic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Triassic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#812b92</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Upper Triassic]]></se:Name>
					<se:Description><se:Title><![CDATA[Upper Triassic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bd8cc3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Rhaetian]]></se:Name>
					<se:Description><se:Title><![CDATA[Rhaetian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Rhaetian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e3b9db</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Norian]]></se:Name>
					<se:Description><se:Title><![CDATA[Norian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Norian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#d6aad3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Carnian]]></se:Name>
					<se:Description><se:Title><![CDATA[Carnian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Carnian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#c99bcb</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Middle Triassic]]></se:Name>
					<se:Description><se:Title><![CDATA[Middle Triassic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b168b1</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Ladinian]]></se:Name>
					<se:Description><se:Title><![CDATA[Ladinian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Ladinian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#c983bf</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Anisian]]></se:Name>
					<se:Description><se:Title><![CDATA[Anisian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Anisian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bc75b7</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lower Triassic]]></se:Name>
					<se:Description><se:Title><![CDATA[Lower Triassic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#983999</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Olenekian]]></se:Name>
					<se:Description><se:Title><![CDATA[Olenekian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Olenekian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b051a5</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Induan]]></se:Name>
					<se:Description><se:Title><![CDATA[Induan]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Induan]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a4469f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Paleozoic]]></se:Name>
					<se:Description><se:Title><![CDATA[Paleozoic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Paleozoic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99c08d</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Permian]]></se:Name>
					<se:Description><se:Title><![CDATA[Permian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Permian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f04028</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lopingian]]></se:Name>
					<se:Description><se:Title><![CDATA[Lopingian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Lopingian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fba794</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Changhsingian]]></se:Name>
					<se:Description><se:Title><![CDATA[Changhsingian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Changhsingian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fcc0b2</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Wuchiapingian]]></se:Name>
					<se:Description><se:Title><![CDATA[Wuchiapingian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Wuchiapingian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fcb4a2</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Guadalupian]]></se:Name>
					<se:Description><se:Title><![CDATA[Guadalupian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Guadalupian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fb745c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Capitanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Capitanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Capitanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fb9a85</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Wordian]]></se:Name>
					<se:Description><se:Title><![CDATA[Wordian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Wordian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fb8d76</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Roadian]]></se:Name>
					<se:Description><se:Title><![CDATA[Roadian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Roadian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fb8069</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cisuralian]]></se:Name>
					<se:Description><se:Title><![CDATA[Cisuralian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Cisuralian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ef5845</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Kungurian]]></se:Name>
					<se:Description><se:Title><![CDATA[Kungurian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Kungurian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e38776</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Artinskian]]></se:Name>
					<se:Description><se:Title><![CDATA[Artinskian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Artinskian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e37b68</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Sakmarian]]></se:Name>
					<se:Description><se:Title><![CDATA[Sakmarian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Sakmarian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e36f5c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Asselian]]></se:Name>
					<se:Description><se:Title><![CDATA[Asselian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Asselian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e36350</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Carboniferous]]></se:Name>
					<se:Description><se:Title><![CDATA[Carboniferous]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Carboniferous]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#67a599</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Pennsylvanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Pennsylvanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99c2b5</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Upper Pennsylvanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Upper Pennsylvanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/UpperPennsylvanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfd0ba</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Gzhelian]]></se:Name>
					<se:Description><se:Title><![CDATA[Gzhelian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Gzhelian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ccd4c7</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Kasimovian]]></se:Name>
					<se:Description><se:Title><![CDATA[Kasimovian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Kasimovian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfd0c5</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Middle Pennsylvanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Middle Pennsylvanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/MiddlePennsylvanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6c7b7</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Moscovian]]></se:Name>
					<se:Description><se:Title><![CDATA[Moscovian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Moscovian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3cbb9</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lower Pennsylvanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Lower Pennsylvanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/LowerPennsylvanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#8cbeb4</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Bashkirian]]></se:Name>
					<se:Description><se:Title><![CDATA[Bashkirian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Bashkirian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99c2b5</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Mississippian]]></se:Name>
					<se:Description><se:Title><![CDATA[Mississippian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Mississippian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#678f66</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Upper Mississippian]]></se:Name>
					<se:Description><se:Title><![CDATA[Upper Mississippian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/UpperMississippian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3be6c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Serpukhovian]]></se:Name>
					<se:Description><se:Title><![CDATA[Serpukhovian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Serpukhovian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfc26b</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Middle Mississippian]]></se:Name>
					<se:Description><se:Title><![CDATA[Middle Mississippian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/MiddleMississippian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99b46c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Visean]]></se:Name>
					<se:Description><se:Title><![CDATA[Visean]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Visean]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6b96c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lower Mississippian]]></se:Name>
					<se:Description><se:Title><![CDATA[Lower Mississippian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/LowerMississippian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#80ab6c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Tournaisian]]></se:Name>
					<se:Description><se:Title><![CDATA[Tournaisian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Tournaisian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#8cb06c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Devonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Devonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Devonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#cb8c37</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Upper Devonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Upper Devonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/UpperDevonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f1e19d</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Famennian]]></se:Name>
					<se:Description><se:Title><![CDATA[Famennian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Famennian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f2edc5</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Frasnian]]></se:Name>
					<se:Description><se:Title><![CDATA[Frasnian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Frasnian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f2edad</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Middle Devonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Middle Devonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/MiddleDevonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f1c868</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Givetian]]></se:Name>
					<se:Description><se:Title><![CDATA[Givetian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Givetian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f1e185</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Eifelian]]></se:Name>
					<se:Description><se:Title><![CDATA[Eifelian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Eifelian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f1d576</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lower Devonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Lower Devonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/LowerDevonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e5ac4d</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Emsian]]></se:Name>
					<se:Description><se:Title><![CDATA[Emsian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Emsian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e5d075</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Pragian]]></se:Name>
					<se:Description><se:Title><![CDATA[Pragian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Pragian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e5c468</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lochkovian]]></se:Name>
					<se:Description><se:Title><![CDATA[Lochkovian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Lochkovian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e5b75a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Silurian]]></se:Name>
					<se:Description><se:Title><![CDATA[Silurian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Silurian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3e1b6</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Pridoli]]></se:Name>
					<se:Description><se:Title><![CDATA[Pridoli]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Pridoli]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e6f5e1</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Ludlow]]></se:Name>
					<se:Description><se:Title><![CDATA[Ludlow]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Ludlow]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfe6cf</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Ludfordian]]></se:Name>
					<se:Description><se:Title><![CDATA[Ludfordian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Ludfordian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#d9f0df</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Gorstian]]></se:Name>
					<se:Description><se:Title><![CDATA[Gorstian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Gorstian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ccecdd</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Wenlock]]></se:Name>
					<se:Description><se:Title><![CDATA[Wenlock]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Wenlock]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3e1c2</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Homerian]]></se:Name>
					<se:Description><se:Title><![CDATA[Homerian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Homerian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ccebd1</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Sheinwoodian]]></se:Name>
					<se:Description><se:Title><![CDATA[Sheinwoodian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Sheinwoodian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfe6c3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Llandovery]]></se:Name>
					<se:Description><se:Title><![CDATA[Llandovery]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Llandovery]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99d7b3</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Telychian]]></se:Name>
					<se:Description><se:Title><![CDATA[Telychian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Telychian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfe6cf</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Aeronian]]></se:Name>
					<se:Description><se:Title><![CDATA[Aeronian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Aeronian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3e1c2</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Rhuddanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Rhuddanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Rhuddanian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6dcb5</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Ordovician]]></se:Name>
					<se:Description><se:Title><![CDATA[Ordovician]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Ordovician]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#009270</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Upper Ordovician]]></se:Name>
					<se:Description><se:Title><![CDATA[Upper Ordovician]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/UpperOrdovician]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#7fca93</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Hirnantian]]></se:Name>
					<se:Description><se:Title><![CDATA[Hirnantian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Hirnantian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6dbab</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Katian]]></se:Name>
					<se:Description><se:Title><![CDATA[Katian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Katian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99d69f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Sandbian]]></se:Name>
					<se:Description><se:Title><![CDATA[Sandbian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Sandbian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#8cd094</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Middle Ordovician]]></se:Name>
					<se:Description><se:Title><![CDATA[Middle Ordovician]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/MiddleOrdovician]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#4db47e</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Darriwilian]]></se:Name>
					<se:Description><se:Title><![CDATA[Darriwilian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Darriwilian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#74c69c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Dapingian]]></se:Name>
					<se:Description><se:Title><![CDATA[Dapingian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Dapingian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#66c092</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Lower Ordovician]]></se:Name>
					<se:Description><se:Title><![CDATA[Lower Ordovician]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/LowerOrdovician]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#1a9d6f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Floian]]></se:Name>
					<se:Description><se:Title><![CDATA[Floian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Floian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#41b087</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Tremadocian]]></se:Name>
					<se:Description><se:Title><![CDATA[Tremadocian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Tremadocian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#33a97e</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cambrian]]></se:Name>
					<se:Description><se:Title><![CDATA[Cambrian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Cambrian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#7fa056</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Furongian]]></se:Name>
					<se:Description><se:Title><![CDATA[Furongian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Furongian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3e095</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cambrian Stage 10]]></se:Name>
					<se:Description><se:Title><![CDATA[Cambrian Stage 10]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/CambrianStage10]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#e6f5c9</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Jiangshanian]]></se:Name>
					<se:Description><se:Title><![CDATA[Jiangshanian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/CambrianStage9]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#d9f0bb</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Paibian]]></se:Name>
					<se:Description><se:Title><![CDATA[Paibian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Paibian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ccebae</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cambrian Series 3]]></se:Name>
					<se:Description><se:Title><![CDATA[Cambrian Series 3]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/CambrianSeries3]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6cf86</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Guzhangian]]></se:Name>
					<se:Description><se:Title><![CDATA[Guzhangian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Guzhangian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ccdfaa</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Drumian]]></se:Name>
					<se:Description><se:Title><![CDATA[Drumian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Drumian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#bfd99d</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cambrian Stage 5]]></se:Name>
					<se:Description><se:Title><![CDATA[Cambrian Stage 5]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/CambrianStage5]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3d492</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cambrian Series 2]]></se:Name>
					<se:Description><se:Title><![CDATA[Cambrian Series 2]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/CambrianSeries2]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99c078</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cambrian Stage 4]]></se:Name>
					<se:Description><se:Title><![CDATA[Cambrian Stage 4]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/CambrianStage4]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#b3ca8e</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cambrian Stage 3]]></se:Name>
					<se:Description><se:Title><![CDATA[Cambrian Stage 3]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/CambrianStage3]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6c583</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Terreneuvian]]></se:Name>
					<se:Description><se:Title><![CDATA[Terreneuvian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Terreneuvian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#8cb06c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cambrian Stage 2]]></se:Name>
					<se:Description><se:Title><![CDATA[Cambrian Stage 2]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/CambrianStage2]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#a6ba80</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Fortunian]]></se:Name>
					<se:Description><se:Title><![CDATA[Fortunian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Fortunian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#99b575</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Precambrian]]></se:Name>
					<se:Description><se:Title><![CDATA[Precambrian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Precambrian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f74370</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Proterozoic]]></se:Name>
					<se:Description><se:Title><![CDATA[Proterozoic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Proterozoic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f73563</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Neoproterozoic]]></se:Name>
					<se:Description><se:Title><![CDATA[Neoproterozoic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Neoproterozoic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#feb342</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Ediacaran]]></se:Name>
					<se:Description><se:Title><![CDATA[Ediacaran]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Ediacaran]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fed96a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Cryogenian]]></se:Name>
					<se:Description><se:Title><![CDATA[Cryogenian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Cryogenian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fecc5c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Tonian]]></se:Name>
					<se:Description><se:Title><![CDATA[Tonian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Tonian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#febf4e</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Mesoproterozoic]]></se:Name>
					<se:Description><se:Title><![CDATA[Mesoproterozoic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Mesoproterozoic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdb462</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Stenian]]></se:Name>
					<se:Description><se:Title><![CDATA[Stenian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Stenian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fed99a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Ectasian]]></se:Name>
					<se:Description><se:Title><![CDATA[Ectasian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Ectasian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdcc8a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Calymmian]]></se:Name>
					<se:Description><se:Title><![CDATA[Calymmian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Calymmian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#fdc07a</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Paleoproterozoic]]></se:Name>
					<se:Description><se:Title><![CDATA[Paleoproterozoic]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Paleoproterozoic]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f74370</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Statherian]]></se:Name>
					<se:Description><se:Title><![CDATA[Statherian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Statherian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f875a7</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Orosirian]]></se:Name>
					<se:Description><se:Title><![CDATA[Orosirian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Orosirian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f76898</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Rhyacian]]></se:Name>
					<se:Description><se:Title><![CDATA[Rhyacian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Rhyacian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f75b89</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Siderian]]></se:Name>
					<se:Description><se:Title><![CDATA[Siderian]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Siderian]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f74f7c</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Archaean]]></se:Name>
					<se:Description><se:Title><![CDATA[Archaean]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Archean]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f0047f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Neoarchean]]></se:Name>
					<se:Description><se:Title><![CDATA[Neoarchean]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Neoarchean]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f99bc1</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Mesoarchean]]></se:Name>
					<se:Description><se:Title><![CDATA[Mesoarchean]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Mesoarchean]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f768a9</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Paleoarchean]]></se:Name>
					<se:Description><se:Title><![CDATA[Paleoarchean]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Paleoarchean]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#f4449f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Eoarchean]]></se:Name>
					<se:Description><se:Title><![CDATA[Eoarchean]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Eoarchean]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#da037f</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
				<se:Rule>
					<se:Name><![CDATA[Hadean]]></se:Name>
					<se:Description><se:Title><![CDATA[Hadean]]></se:Title></se:Description>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsmlp:representativeAge_uri</ogc:PropertyName>
							<ogc:Literal><![CDATA[http://resource.geosciml.org/classifier/ics/ischart/Hadean]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<se:PolygonSymbolizer>
						<se:Fill>
							<se:SvgParameter name="Fill" >#ae027e</se:SvgParameter>
							<se:SvgParameter name="Fill-opacity" >1</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="se:Stroke" >#000000</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-width" >0.4</se:SvgParameter>
							<se:SvgParameter name="se:Stroke-opacity" >1</se:SvgParameter>
						</se:Stroke>
					</se:PolygonSymbolizer>
				</se:Rule>
			</se:FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>
