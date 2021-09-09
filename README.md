# Luangwa Rift Active Fault Database (LRAFD)
Active fault database for the Luangwa Rift, Zambia compiled by Tess Turner, Luke Wedmore and Juliet Biggs at University of Bristol.

The Luangwa Rift Active Fault Database (LRAFD) is a freely available open-source geospatial database of active fault traces within the Luangwa Rift, Zambia. Full details of the criteria used to assess activity will be released in a publication that is currently in preparation.

The active fault database is currently a work in progress but will be released in line with the Global Earthquake Model standards and form the basis of a publication that will shortly be submitted.

## Data Format
The LRAFD is a geospatial database containing a collection of active fault traces in GIS vector format. Each fault is mapped as a single continuous GIS feature, and has associated metadata that describe the geometry of the fault and various aspects of its exposure and the methodology used to map the fault.

The list below describes the attributes within the LRAFD. These attributes are based on the [Global Earthquake Model Global Active Faults Database] ([GEM-GAFD]; [Styron and Pagani, 2020]). Note, we do not currently include all attributes from the [GEM-GAFD] as these data have not been collected in the Luangwa Rift. It is the intention that future versions of this database will include more attributes. No assessment is made of the seismogenic properties of the faults in the LRAFD as this is subjective. These data have been compiled in the publication associated with this database.


### Data Table
Attribute                                   | Data Type | Description                                                     | Notes
--------------------------------------------|-----------|-----------------------------------------------------------------|-----------------------------------
LRAFD_ID                                    | integer   | Unique Fault IDentification number assigned to each fault trace | 
Fault_Name                                  | string    | Name of fault                                                   | Assigned using local geographic features or towns
Dip_Direction                               | string    | Compass quadrant of fault dip direction                         | 
slip_type                                   | string    | kinematic type of fault                                         | e.g. normal, reverse, sinistral-strike slip, dextral-strike slip
Fault_Length                                | decimal   | Straight line distance between the tips of the fault            | 
GeomorphicExpression                        | string    | Geomorphic feature/features used to identify the fault trace and its extent | e.g. escarpment, fault scarp, offset sedimentary feature
Method                                      | string    | DEM or geologic dataset used to identify and map the fault trace | e.g. digital elevation model hillshade, slope map
Confidence                                  | integer   | Confidence of recent (Late-Quaternary) activity                 | Ranges from 1-4, 1 if high certainty, 4 if low certainty
ExposureQuality                             | integer   | Fault exposure quality                                          | 1 if high, 2 if low
EpistemicQuality                            | integer   | Certainty of whether a fault exists there                       | 1 if high, 2 if low
Accuracy                                    | integer   | Coarsest scale at which fault trace can be mapped, expressed as the denominator of the map scale | reflects the prominence of the fault's geomorphic expression
GeologicalMapExpression                     | string    | extent of correlation between fault traces and legacy geological map | whether faults have been previously mapped and/or follow geological contacts
Notes                                       | string    | Any additinoal or relevant information regarding the fault      | 
References                                  | string    | Relevant literature/geological maps where the fault is mentioned/described | 

## File Formats
Following the [GEM-GAFD], this database is provided in a variety of GIS vector file formats. [GeoJSON] is the version of record, and any changes should be made in this version, before they are converted to other filed formats using the [convert.sh] shell script available in this repository. This script uses the [GDAL] tool [ogr2ogr] and is adapted from a script posted by Richard Styron (https://github.com/cossatot/central_am_carib_faults/blob/master/convert.sh), who we thank for making this publicly available. The other versions available are [ESRI Shapefile], [KML], [GMT] and [Geopackage]. 

Note that in the [ESRI Shapefile] format, the length of the attribute are restricted in length by the format, so we advise against using this format.

## Version Control
A static version of this database in all formats described above and associated with the impending publication will be placed on the Zendodo data archive.

This version is intended to be live and as such we encourage edits of the [GeoJSON] file and the submission of pull requests. Please contact Luke Wedmore <luke.wedmore@bristol.ac.uk> for information or to report errors in the database.

### References
Styron, Richard, and Marco Pagani. “The GEM Global Active Faults Database.” Earthquake Spectra, vol. 36, no. 1_suppl, Oct. 2020, pp. 160–180, doi:10.1177/8755293020944182.


[GeoJSON]: http://geojson.org/
[GeoPackage]: https://www.geopackage.org/
[ESRI ShapeFile]: https://support.esri.com/en/white-paper/279
[Global Earthquake Model Global Active Faults Database]: https://github.com/cossatot/gem-global-active-faults
[GEM-GAFD]: https://github.com/cossatot/gem-global-active-faults
[ogr2ogr]: https://gdal.org/programs/ogr2ogr.html
[GDAL]: https://gdal.org/
[KML]: https://earth.google.com
[GMT]: https://www.generic-mapping-tools.org/
[convert.sh]: https://github.com/LukeWedmore/luangwa_rift_active_fault_database/blob/main/convert.sh
[Styron and Pagani, 2020]: https://doi.org/10.1177%2F8755293020944182

