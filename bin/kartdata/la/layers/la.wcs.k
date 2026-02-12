  LAYER
    NAME "LA-KLG-AI_k"
    INCLUDE "/etc/mapserver/mapdata/la/headers/la.wcs"
    DATA "/etc/mapserver/mapdata/la/data/LA_raster/KLG_AI_k.tif"
    METADATA
      "wcs_label"           "LA-KLG-AI_k"  ### required
      "wcs_rangeset_name"   "100m"               ### required to support DescribeCoverage request
      "wcs_rangeset_label"  "100 meters"              ### required to support DescribeCoverage request
      "wcs_srs" "EPSG:32633 EPSG:25833 EPSG:32632 EPSG:25832 EPSG:32635 EPSG:25835"
      "wcs_formats" "GeoTIFF"
      "wcs_resolution"             "100 100"
      "wcs_enable_request" "*"
    END
  END
  LAYER
    NAME "LA-KLG-JP_k"
    INCLUDE "/etc/mapserver/mapdata/la/headers/la.wcs"
    DATA "/etc/mapserver/mapdata/la/data/LA_raster/KLG_JP_k.tif"
    METADATA
      "wcs_label"           "LA-KLG-JP_k"  ### required
      "wcs_rangeset_name"   "100m"               ### required to support DescribeCoverage request
      "wcs_rangeset_label"  "100 meters"              ### required to support DescribeCoverage request
      "wcs_srs" "EPSG:32633 EPSG:25833 EPSG:32632 EPSG:25832 EPSG:32635 EPSG:25835"
      "wcs_formats" "GeoTIFF" 
      "wcs_resolution"             "100 100"
      "wcs_enable_request" "*"
    END
  END
  LAYER
    NAME "LA-KLG-KA_k"
    INCLUDE "/etc/mapserver/mapdata/la/headers/la.wcs"
    DATA "/etc/mapserver/mapdata/la/data/LA_raster/KLG_KA_k.tif"
    METADATA
      "wcs_label"           "LA-KLG-KA_k"  ### required
      "wcs_rangeset_name"   "100m"               ### required to support DescribeCoverage request
      "wcs_rangeset_label"  "100 meters"              ### required to support DescribeCoverage request
      "wcs_srs" "EPSG:32633 EPSG:25833 EPSG:32632 EPSG:25832 EPSG:32635 EPSG:25835"
      "wcs_formats" "GeoTIFF"
      "wcs_resolution"             "100 100"
      "wcs_enable_request" "*"
    END
  END
  LAYER
    NAME "LA-KLG-VP_k"
    INCLUDE "/etc/mapserver/mapdata/la/la.wcs"
    DATA "/etc/mapserver/mapdata/la/data/LA_raster/KLG_VP_k.tif"
    METADATA
      "wcs_label"           "LA-KLG-VP_k"  ### required
      "wcs_rangeset_name"   "100m"               ### required to support DescribeCoverage request
      "wcs_rangeset_label"  "100 meters"              ### required to support DescribeCoverage request
      "wcs_srs" "EPSG:32633 EPSG:25833 EPSG:32632 EPSG:25832 EPSG:32635 EPSG:25835"
      "wcs_formats" "GeoTIFF" 
      "wcs_resolution"             "100 100"
      "wcs_enable_request" "*"
    END
  END
