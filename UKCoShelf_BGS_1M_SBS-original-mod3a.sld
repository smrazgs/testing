<StyledLayerDescriptor version="1.1.0"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd"
xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<NamedLayer>
<se:Name>UKCoShelf_BGS_1M_SBS</se:Name>
<UserStyle>
<se:FeatureTypeStyle>
<!--
<se:Rule>
<se:Name>Coarse Sediment</se:Name>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>SEDIMENT</ogc:PropertyName>
<ogc:Literal>Coarse Sediment</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<se:PolygonSymbolizer>
<se:Fill>
<se:SvgParameter name="fill">#ffbee8</se:SvgParameter>
</se:Fill>
<se:Stroke>
<se:SvgParameter name="stroke">#000000</se:SvgParameter>
<se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
</se:Stroke>
</se:PolygonSymbolizer>
</se:Rule>
<se:Rule>
<se:Name>Mixed Sediment</se:Name>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>SEDIMENT</ogc:PropertyName>
<ogc:Literal>Mixed Sediment</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<se:PolygonSymbolizer>
<se:Fill>
<se:SvgParameter name="fill">#beffe8</se:SvgParameter>
</se:Fill>
<se:Stroke>
<se:SvgParameter name="stroke">#000000</se:SvgParameter>
<se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
</se:Stroke>
</se:PolygonSymbolizer>
</se:Rule>
<se:Rule>
<se:Name>Mud and Sandy Mud</se:Name>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>SEDIMENT</ogc:PropertyName>
<ogc:Literal>Mud and Sandy Mud</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<se:PolygonSymbolizer>
<se:Fill>
<se:SvgParameter name="fill">#73b273</se:SvgParameter>
</se:Fill>
<se:Stroke>
<se:SvgParameter name="stroke">#000000</se:SvgParameter>
<se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
</se:Stroke>
</se:PolygonSymbolizer>
</se:Rule>
<se:Rule>
<se:Name>Rock or Diamicton</se:Name>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>SEDIMENT</ogc:PropertyName>
<ogc:Literal>Rock or Diamicton</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<se:PolygonSymbolizer>
<se:Fill>
<se:SvgParameter name="fill">#cccccc</se:SvgParameter>
</se:Fill>
<se:Stroke>
<se:SvgParameter name="stroke">#000000</se:SvgParameter>
<se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
</se:Stroke>
</se:PolygonSymbolizer>
</se:Rule>
-->
<se:Rule>
<se:Name>Sand and Muddy Sand</se:Name>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>SEDIMENT</ogc:PropertyName>
<ogc:Literal>Sand and Muddy Sand</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<se:PolygonSymbolizer>
<se:Fill>
<!--<se:SvgParameter name="fill">#e6e600</se:SvgParameter>-->
<se:SvgParameter name="fill">#000000</se:SvgParameter>
</se:Fill>
<se:Stroke>
<se:SvgParameter name="stroke">##e6e600</se:SvgParameter>
<se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
</se:Stroke>
</se:PolygonSymbolizer>
</se:Rule>
</se:FeatureTypeStyle>
</UserStyle>
</NamedLayer>
</StyledLayerDescriptor>
