#!/bin/bash

echo archiving geojson file
NOW=$(date +"%m-%d-%Y")
mv geojson/LRAFD.geojson geojson/LRAFD.$NOW.geojson

echo updating formatting
ogr2ogr -sql "SELECT LRAFD_ID,Fault_Name,Dip_Direction,slip_type,Map_Length,GeomorphicExpression,Method,Confidence,ExposureQuality,EpistemicQuality,Accuracy,GeologicalMapExpression,Notes,References FROM luangwa_rift_active_fault_database" -f "GeoJSON" geojson/LRAFD.geojson geojson/LRAFD_qgis.geojson

echo ------------------------
echo converting to shapefile
rm -f shapefile/LRAFD*
ogr2ogr -f "ESRI Shapefile" shapefile/LRAFD.shp geojson/LRAFD.geojson

echo ------------------------
echo converting to geopackage
rm -f geopackage/*.gpkg
ogr2ogr -f "GPKG" geopackage/LRAFD.gpkg geojson/LRAFD.geojson

echo ------------------------
echo converting to GMT
rm -f gmt/*.gmt
ogr2ogr -f "GMT" gmt/LRAFD.gmt geojson/LRAFD.geojson

echo ------------------------
echo converting to KML
rm -f kml/*.kml
ogr2ogr -f "KML" kml/LRAFD_Faults.kml geojson/LRAFD.geojson
