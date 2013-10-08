# Notes #
In an SLD-enabled WMS, 

 - LAYERS and STYLES parameters are optional when an SLD parameter is supplied.

 - when the LAYERS and STYLES parameters are supplied and an SLD parameter is supplied, the WMS goes into 'library mode' and has to try and work out which of the external (e.g. supplied via the SLD parameter value) styles and which of the internal styles (e.g. supplied via the LAYERS and STYLES parameter values) it applies.
##  from OGC 05-078r4: ##
To make the HTTP-GET methods more practical for use, the SLD can also be used in
one of two different modes depending on whether the LAYERS parameter is present in
the request.

**If LAYERS parameter is not present in the request**, then all layers identified in the SLD document are
rendered with all defined styles.

**If the LAYERS parameter is present in the request**, then only the layers identified by that parameter are
rendered and the SLD is used as a “*style library*”.

When an SLD is used as a *style library*, the STYLES parameter is interpreted such that the styles defined in the SLD take precedence over the named styles stored within the map server. If the LAYER specified by the request LAYER parameter is defined and in the SLD, and has an associated STYLE with a name matching the STYLE parameter value in the request, then the SLD definition is used. Otherwise, the standard named-style mechanism built into the map server is used.

User-defined SLD styles can be given names and they can be marked as being the default STYLE for a LAYER.
IF the request specifies STYLE=default, and the SLD contains a STYLE marked as default for a LAYER matching the request LAYER parameter value, then that default style from the SLD is used; otherwise, the standard default style for the LAYER defined by the map server is used.

##Test Links##

###Minnesota Mapserver target###
[Capabilities for service](http://ogc.bgs.ac.uk/cgi-bin/BGS_Bedrock_and_Superficial_Geology/wms?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.3.0) has layer named UKCoShelf\_BGS\_1M\_SBS, no prefix.

[Original GetMap request with no SLD param](http://ogc.bgs.ac.uk/cgi-bin/BGS_Bedrock_and_Superficial_Geology/wms?REQUEST=GetMap&SERVICE=WMS&VERSION=1.3.0&FORMAT=image/png&BGCOLOR=0xFFFFFF&TRANSPARENT=TRUE&CRS=EPSG:4326&BBOX=49.0,-10.5,61.9,3.2&WIDTH=900&HEIGHT=881&LAYERS=UKCoShelf_BGS_1M_SBS&STYLES=default&), Gets submarine geology around the UK.

[GetMap with an external SLD (no layers or styles params supplied)](http://ogc.bgs.ac.uk/cgi-bin/BGS_Bedrock_and_Superficial_Geology/wms?REQUEST=GetMap&SERVICE=WMS&VERSION=1.3.0&FORMAT=image/png&BGCOLOR=0xFFFFFF&TRANSPARENT=TRUE&CRS=EPSG:4326&BBOX=49.0,-10.5,61.9,3.2&WIDTH=900&HEIGHT=881&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2FUKCoShelf_BGS_1M_SBS-original-mod3a.sld)

[GetMap with the external SLD and with layers and styles params](http://ogc.bgs.ac.uk/cgi-bin/BGS_Bedrock_and_Superficial_Geology/wms?REQUEST=GetMap&SERVICE=WMS&VERSION=1.3.0&FORMAT=image/png&BGCOLOR=0xFFFFFF&TRANSPARENT=TRUE&CRS=EPSG:4326&BBOX=49.0,-10.5,61.9,3.2&WIDTH=900&HEIGHT=881&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2FUKCoShelf_BGS_1M_SBS-original-mod3a.sld&LAYERS=UKCoShelf_BGS_1M_SBS&STYLES=default&) gives you the same result as the external SLD without the layers and styles params, which is the expected result in this scenario.

[SLD Location:](http://ogc.bgs.ac.uk/sld/UKCoShelf_BGS_1M_SBS-original-mod3a.sld) This is a v1.1.0 SLD, named layer is UKCoShelf\_BGS\_1M\_SBS, no prefix.
This is a Layer/Name in the capabilities document for the service

### Nevada, ArcGIS server ###

[Get Capabilities](http://gisweb.unr.edu/arcgis/services/OneGeology/NBMG_Geology/MapServer/WMSServer?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetCapabilities). Has layer name US-NV\_NBMG\_500k\_Geology, no prefix. A default style element is present.

[Layers and Styles parameters with ArcGIS server and SLD WMS:](http://gisweb.unr.edu/arcgis/services/OneGeology/NBMG_Geology/MapServer/WMSServer?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=39.7,-116.2,41,-114.6&CRS=EPSG:4326&WIDTH=925&HEIGHT=802&LAYERS=US-NV_NBMG_500k_Geology&STYLES=&FORMAT=image/jpeg&DPI=96&MAP_RESOLUTION=96&FORMAT_OPTIONS=dpi:96&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2Fnevada-example.sld&). This works.


[ SLD WMS request, without LAYERS and STYLES parameters:](http://gisweb.unr.edu/arcgis/services/OneGeology/NBMG_Geology/MapServer/WMSServer?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=39.66370840865538128,-116.13087390374420238,40.95995233180237705,-114.63744574291149547&CRS=EPSG:4326&WIDTH=925&HEIGHT=802&FORMAT=image/jpeg&DPI=96&MAP_RESOLUTION=96&FORMAT_OPTIONS=dpi:96&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2Fnevada-example.sld&); this errors:
`<ServiceException code="StylesNotDefined">Parameter 'styles' is required.</ServiceException>
`
`<ServiceException code="LayerNotDefined">Parameter 'layer(s)' contains unacceptable value:</ServiceException>
`

[SLD location](http://ogc.bgs.ac.uk/sld/nevada-example.sld). The NamedLayer/Name has no prefix.

###Delaware GeoServer implementation###
[WMS service capabilities with workspace name in the capabilities URL:](http://maps.dgs.udel.edu/geoserver/DGS_Surficial_and_Contact_Geology/wms?service=WMS&version=1.3.0&request=GetCapabilities).  The geoserver workspace prefixes are not included in the layer names.

[WMS service capabilities without workspace name in the URL:](http://maps.dgs.udel.edu/geoserver/wms?service=WMS&version=1.3.0&request=GetCapabilities). The geoserver workspace prefixes **are** included in the layer names...

[Delaware GS GeoServer landing page, layer list:](http://maps.dgs.udel.edu/geoserver/web/;jsessionid=14593A27F8946A750C80073FD1096CFD?wicket:bookmarkablePage=:org.geoserver.web.demo.MapPreviewPage). on the second page of the listing, the OneGeology layers show up with namespace qualifiers DGS\_Surficial\_and\_Contact_Geology:US-DE\_DGS\_100k\_Surficial\_Geology	US-DE,  DGS\_Surficial\_and\_Contact\_Geology:US-DE\_DGS\_100k\_Surficial\_Geology\_Contacts. The namespace qualifiers are the workspace names in the Geoserver configuration (or at least that's how it works in the AZGS geoserver setup).

[Geology, lithostratigraphy portrayal, no namespace qualifier on layer](http://maps.dgs.udel.edu/geoserver/DGS_Surficial_and_Contact_Geology/wms?service=WMS&TRANSPARENT=TRUE&version=1.3.0&request=GetMap&EXCEPTIONS=INIMAGE&FORMAT=image/png&CRS=EPSG%3A4326&BBOX=39.5,-75.8,39.85,-75.4&WIDTH=900&HEIGHT=1000&LAYERS=US-DE_DGS_100k_Surficial_Geology&STYLES=&).  A standard GetMap request (No SLD parameter supplied) which gives the default colouring for the geology polygons.

[Geology, lithostratigraphy portrayal, LAYER parameter has namespace qualifier](http://maps.dgs.udel.edu/geoserver/DGS_Surficial_and_Contact_Geology/wms?service=WMS&TRANSPARENT=TRUE&version=1.3.0&request=GetMap&EXCEPTIONS=INIMAGE&FORMAT=image/png&CRS=EPSG%3A4326&BBOX=39.5,-75.8,39.85,-75.4&WIDTH=900&HEIGHT=1000&LAYERS=DGS_Surficial_and_Contact_Geology:US-DE_DGS_100k_Surficial_Geology&STYLES=&) also works.


[Geology, lithostratigraphy portrayal, WMS end point URL DOES NOT include the workspace name](http://maps.dgs.udel.edu/geoserver/wms?service=WMS&TRANSPARENT=TRUE&version=1.3.0&request=GetMap&EXCEPTIONS=INIMAGE&FORMAT=image/png&CRS=EPSG%3A4326&BBOX=39.5,-75.8,39.85,-75.4&WIDTH=900&HEIGHT=1000&LAYERS=US-DE_DGS_100k_Surficial_Geology&STYLES=&) also works, both when the layer name has workspace prefix and when it does not.

The portal tool generates an SLD based on the layer name advertised in the WMS service GetCapabilities response and sends the [SLD WMS GetMap request without the optional LAYERS and STYLES parameters](http://maps.dgs.udel.edu/geoserver/DGS_Surficial_and_Contact_Geology/wms?service=WMS&TRANSPARENT=TRUE&version=1.3.0&request=GetMap&EXCEPTIONS=INIMAGE&FORMAT=image/png&CRS=EPSG%3A4326&BBOX=39.5,-75.8,39.85,-75.4&WIDTH=900&HEIGHT=1000&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2Fgeoserver-style-test-no-named-style.sld&), and that gives what we were expecting (a blue map colouring some of the polygons). The named layer in the SLD has no workspace prefix.

[SLD WMS GetMap request without LAYERS and STYLES parameters, no workspace in end point URL](http://maps.dgs.udel.edu/geoserver/wms?service=WMS&TRANSPARENT=TRUE&version=1.3.0&request=GetMap&EXCEPTIONS=INIMAGE&FORMAT=image/png&CRS=EPSG%3A4326&BBOX=39.5,-75.8,39.85,-75.4&WIDTH=900&HEIGHT=1000&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2Fgeoserver-style-test-no-named-style.sld&), also gives what we were expecting (a blue map colouring some of the polygons). The named layer in the SLD has no workspace prefix, and the service endpoint URL doesn't include the workspace name.


[SLD WMS GetMap request with LAYERS and STYLES parameter, no workspace prefix on SLD layer name](http://maps.dgs.udel.edu/geoserver/DGS_Surficial_and_Contact_Geology/wms?service=WMS&TRANSPARENT=TRUE&version=1.3.0&request=GetMap&EXCEPTIONS=INIMAGE&FORMAT=image/png&CRS=EPSG%3A4326&BBOX=39.5,-75.8,39.85,-75.4&WIDTH=900&HEIGHT=1000&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2Fgeoserver-style-test-no-named-style.sld&LAYERS=US-DE_DGS_100k_Surficial_Geology&STYLES=&); this returns the map based on the default portrayal, NOT the SLD portrayal. The SLD named layer does not match a named layer in the service.  The SLD namedLayer/name (US-DE\_DGS\_100k\_Surficial_Geology) has no workspace prefix.

[SLD location](http://ogc.bgs.ac.uk/sld/geoserver-style-test-no-named-style.sld), version 1.0.0, namedLayer/name=US-DE\_DGS\_100k\_Surficial\_Geology

[SLD WMS GetMap request with LAYERS and STYLES parameter, use SLD with workspace prefix](http://maps.dgs.udel.edu/geoserver/DGS_Surficial_and_Contact_Geology/wms?service=WMS&TRANSPARENT=TRUE&version=1.3.0&request=GetMap&EXCEPTIONS=INIMAGE&FORMAT=image/png&CRS=EPSG%3A4326&BBOX=39.5,-75.8,39.85,-75.4&WIDTH=900&HEIGHT=1000&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2Fgeoserver-style-test-no-named-style1.sld&layers=US-DE_DGS_100k_Surficial_Geology&). Note the different sld file-- this [SLD location](http://ogc.bgs.ac.uk/sld/geoserver-style-test-no-named-style1.sld), has namedLayer/name=DGS\_Surficial\_and\_Contact\_Geology:US-DE\_DGS\_100k\_Surficial\_Geology. The prefix is the workspace name from the Geoserver configuration.

# Conclusions #

When Using Geoserver, the SLD needs to include the workspace name as a prefix on the NamedLayer/Name; When using ArcGIS, the NamedLayer/Name is not expected to have a prefix.  The layer name from the getCapabilities response provides the correct string to use for identifying layers in the SLD if the endpoint URL used for Geoserver is the base URL for the service, with no workspace name.

For the USGIN use case, i.e. using the SAME SLD against several geosciml-portrayal based WMS services, in may be necessary to provide a two named layers, one with and one without a workspace prefix (depending on ArcGIS and Mapserver behavior), and Geoserver implementations may have to be required to use the same workspace name for gsmlp layers.

If naming ArcGIS geosciml portrayal layers using the same prefix string that is used to identify the GeoSciML portrayal workspace in GeoServer implementations may make SLDs with two (prefix and no prefix) named layers unnecessary.

Explore using styles in GeoSciML portrayal SLD to implement lithology and age portrayals as styles on the same named layer.
