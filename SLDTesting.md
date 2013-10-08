In an SLD-enabled WMS, 
 --- LAYERS and STYLES parameters are optional when an SLD parameter is supplied.
 --- when the LAYERS and STYLES parameters are supplied and an SLD parameter is supplied, the WMS goes into 'library mode' and has to try and work out which of the external (e.g. supplied via the SLD parameter value) styles and which of the internal styles (e.g. supplied via the LAYERS and STYLES parameter values) it applies.
 from OGC 05-078r4:
 To make the HTTP-GET methods more practical for use, the SLD can also be used in
one of two different modes depending on whether the LAYERS parameter is present in
the request. If it is not present, then all layers identified in the SLD document are
rendered with all defined styles, which is equivalent to the XML-POST method of usage.
If the LAYERS parameter is present, then only the layers identified by that parameter are
rendered and the SLD is used as a “style library”.
When an SLD is used as a style library, the STYLES CGI parameter is interpreted in the
usual way in the GetMap request, except that the handling of the style names is
organized so that the styles defined in the SLD take precedence over the named styles
stored within the map server. The user-defined SLD styles can be given names and they
can be marked as being the default style for a layer. To be more specific, if a style named
“CenterLine” is referenced for a layer and a style with that name is defined for the
corresponding layer in the SLD, then the SLD style definition is used. Otherwise, the
standard named-style mechanism built into the map server is used. If the use of a default
style is specified and a style is marked as being the default for the corresponding layer in
the SLD, then the default style from the SLD is used; otherwise, the standard default style
in the map server is used.



Minnesota Mapserver target
Original GetMap request with no SLD param:
http://ogc.bgs.ac.uk/cgi-bin/BGS_Bedrock_and_Superficial_Geology/wms?REQUEST=GetMap&SERVICE=WMS&VERSION=1.3.0&FORMAT=image/png&BGCOLOR=0xFFFFFF&TRANSPARENT=TRUE&CRS=EPSG:4326&BBOX=49.0,-10.5,61.9,3.2&WIDTH=900&HEIGHT=881&LAYERS=UKCoShelf_BGS_1M_SBS&STYLES=default&

GetMap with an external SLD (but no layers or styles params supplied)
http://ogc.bgs.ac.uk/cgi-bin/BGS_Bedrock_and_Superficial_Geology/wms?REQUEST=GetMap&SERVICE=WMS&VERSION=1.3.0&FORMAT=image/png&BGCOLOR=0xFFFFFF&TRANSPARENT=TRUE&CRS=EPSG:4326&BBOX=49.0,-10.5,61.9,3.2&WIDTH=900&HEIGHT=881&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2FUKCoShelf_BGS_1M_SBS-original-mod3a.sld

GetMap with the external SLD and with layers and styles params, gives you the same result as the external SLD without the layers and styles params, which is the expected result in this scenario.
http://ogc.bgs.ac.uk/cgi-bin/BGS_Bedrock_and_Superficial_Geology/wms?REQUEST=GetMap&SERVICE=WMS&VERSION=1.3.0&FORMAT=image/png&BGCOLOR=0xFFFFFF&TRANSPARENT=TRUE&CRS=EPSG:4326&BBOX=49.0,-10.5,61.9,3.2&WIDTH=900&HEIGHT=881&SLD=http%3A%2F%2Fogc.bgs.ac.uk%2Fsld%2FUKCoShelf_BGS_1M_SBS-original-mod3a.sld&LAYERS=UKCoShelf_BGS_1M_SBS&STYLES=default&

SLD Location: http://ogc.bgs.ac.uk/sld/UKCoShelf_BGS_1M_SBS-original-mod3a.sld This is a v1.1.0 SLD, named layer is UKCoShelf_BGS_1M_SBS
This is a Layer/Name in the capabilities document for the service