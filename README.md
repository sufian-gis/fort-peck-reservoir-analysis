\# Fort Peck Reservoir GIS and Remote Sensing Analysis



A GIS, remote sensing, and hydrologic data analysis project focused on \*\*Fort Peck Reservoir, Montana, USA\*\*.



This project integrates \*\*Sentinel-2 satellite imagery, SRTM elevation data, ArcGIS Pro, PostgreSQL/PostGIS, USGS and U.S. Army Corps of Engineers observations, and Excel-based time-series processing\*\* to investigate reservoir characteristics, water extent, terrain, and daily hydrologic observations.



\---



\## Project Overview



The project focuses on:



\- Mapping Fort Peck Reservoir and surrounding features

\- Extracting reservoir water extent from Sentinel-2 imagery using NDWI

\- Preparing a final reservoir boundary through manual GIS editing

\- Processing SRTM elevation data for terrain visualization

\- Preparing GIS layers in ArcGIS Pro and exporting them to a GeoPackage

\- Preparing USGS monitoring station information and metadata

\- Calculating 24-hour mean reservoir inflow and outflow

\- Analyzing reservoir elevation, storage, inflow, outflow, and tailwater elevation

\- Producing maps, charts, raster datasets, and GIS data for portfolio and spatial-analysis purposes



\---



\# Objectives



The main objectives of this project are to:



1\. Map Fort Peck Reservoir and surrounding geographic features.

2\. Extract the reservoir water boundary using Sentinel-2 imagery and the Normalized Difference Water Index (NDWI).

3\. Improve the automatically extracted water boundary through manual editing in ArcGIS Pro.

4\. Process SRTM DEM data for terrain visualization.

5\. Prepare GIS datasets and export them as a GeoPackage.

6\. Prepare and document USGS monitoring station information.

7\. Calculate daily 24-hour mean inflow and outflow.

8\. Analyze relationships among reservoir elevation, storage, inflow, outflow, and tailwater elevation.

9\. Produce reproducible GIS, remote sensing, and time-series outputs suitable for portfolio presentation.



\---



\# Data Sources



\## Sentinel-2



Multiple Sentinel-2 scenes were used for reservoir water extraction and preparation of the reservoir boundary.



The imagery was processed to generate an NDWI raster and an initial water mask representing the reservoir water extent.



\## SRTM



SRTM Digital Elevation Model (DEM) data were used for terrain visualization around Fort Peck Reservoir.



The SRTM datasets were:



\- Mosaicked

\- Projected

\- Resampled to a 10 m output cell size



The 10 m output cell size was selected to align the processed DEM with the 10 m Sentinel-2 grid. This resampling does \*\*not\*\* represent the native spatial resolution of the original SRTM dataset.



\## Reservoir and Hydrologic Data



Reservoir and river observation data were obtained from publicly available U.S. government sources, including datasets associated with the \*\*U.S. Army Corps of Engineers\*\* and \*\*USGS\*\*.



The processed daily observation dataset includes:



\- Date

\- Time

\- Reservoir elevation

\- Reservoir storage

\- Tailwater elevation

\- Mean inflow

\- Mean outflow

\- 24-hour flow period



\---



\# Methodology



\## 1. Reservoir Boundary Extraction



The initial reservoir boundary was derived from a Sentinel-2-based \*\*Normalized Difference Water Index (NDWI)\*\* workflow.



The automated water extraction did not accurately represent the reservoir boundary in all areas. Therefore, the initial reservoir polygon was manually edited in \*\*ArcGIS Pro\*\* to correct areas where the automated extraction did not accurately represent the reservoir.



\### Workflow



```text

Sentinel-2 Imagery

&#x20;       ↓

Mosaic / Composite

&#x20;       ↓

NDWI

&#x20;       ↓

Water Mask

&#x20;       ↓

Initial Reservoir Polygon

&#x20;       ↓

Manual Editing in ArcGIS Pro

&#x20;       ↓

Final Reservoir Polygon

```



The final reservoir boundary was used for mapping and GIS visualization.



\---



\## 2. SRTM DEM Processing



SRTM elevation data were processed to prepare a terrain dataset for visualization of the reservoir surroundings.



\### Workflow



```text

SRTM DEM

&#x20;  ↓

Mosaic

&#x20;  ↓

Projection

&#x20;  ↓

10 m Output Cell Size

&#x20;  ↓

Terrain Visualization

```



The processed DEM is provided as:



```text

raster data/projected\_srtm.tif

```



The 10 m cell size was selected for compatibility with the Sentinel-2 spatial grid. It should not be interpreted as an increase in the native spatial resolution of the SRTM source data.



\---



\# GIS Data Preparation



The main GIS layers were created and prepared in \*\*ArcGIS Pro\*\*.



The final GIS layers were exported to:



```text

gis\_data/fort\_peck.gpkg

```



The GeoPackage contains the GIS layers created for the project.



The `usgs\_station` dataset is maintained separately and is \*\*not included\*\* in the GeoPackage.



\---



\# USGS Station Dataset



\## Station Information



The `usgs\_station` dataset represents USGS monitoring station \*\*06132000\*\*, located downstream of Fort Peck Dam.



\### Station Details



| Field | Information |

|---|---|

| Station ID | 06132000 |

| Station Name | Missouri River below Fort Peck Dam MT |

| Location | McCone County, Montana |

| Latitude | 48.044425° |

| Longitude | -106.3562583° |



The station is located downstream of Fort Peck Dam and is used as a reference location for analyzing observed river conditions in relation to Fort Peck Reservoir and dam operations.



\---



\## Spatial Reference



| Field | Information |

|---|---|

| Horizontal Datum | NAD83 |

| Coordinate System | NAD 1983 |

| EPSG | 4269 |

| Geometry Type | Point |

| Horizontal Location Method | Interpolated from Digital MAP |

| Horizontal Accuracy | 0.1 arc-second |



\---



\## Elevation Information



| Field | Information |

|---|---|

| Site Elevation | 2,018 ft |

| Elevation Method | Interpolated from topographic map |

| Elevation Accuracy | 1 ft |

| Vertical Coordinate Reference System | NGVD29 |



The station metadata are included to document the station's location, spatial reference, and elevation reference.



\---



\# 24-Hour Mean Inflow and Outflow



Daily mean inflow and outflow were calculated using a \*\*24-hour observation period ending at 11:00 AM\*\*.



For each observation date, the flow period was defined as:



```text

12:00 PM Previous Day

&#x20;       ↓

&#x20;   24 Hours

&#x20;       ↓

11:00 AM Observation Date

```



\### Example



For the observation date \*\*July 1\*\*, the associated flow period was:



```text

12:00 PM June 30

&#x20;       ↓

&#x20;   24 Hours

&#x20;       ↓

11:00 AM July 1

```



Mean inflow and mean outflow were calculated from the flow observations recorded within each defined 24-hour period.



Reservoir storage, reservoir elevation, and tailwater elevation were retained at the \*\*11:00 AM observation time\*\*.



This produced a daily observation dataset in which the flow averages correspond to the same daily 11:00 AM observation used for the reservoir measurements.



\---



\# Daily Observation Dataset



The processed Excel file is:



```text

excel file/fort\_peck\_daily\_observations.xlsx

```



The dataset contains the processed daily observations used to create the time-series charts and perform the analysis.



The original source Excel files and intermediate processing files are \*\*not included\*\* in the GitHub repository.



\---



\# Maps



The project contains two final map outputs.



\### Fort Peck Basemap



```text

maps/fort\_peck\_basemap.jpg

```



The basemap presents the reservoir and surrounding geographic features and terrain context.



\### Fort Peck Reservoir Map



```text

maps/fort\_peck\_reservoir.jpg

```



The reservoir map presents the reservoir, dam, spillway, river sections, surrounding terrain, and other relevant project features.



\---



\# Charts



The project contains four final charts.



\## 1. Daily Mean Inflow and Outflow



```text

charts/inflow\_outflow\_discharge.png

```



Shows daily mean reservoir inflow and outflow discharge over the observation period.



\## 2. Reservoir Elevation and Storage



```text

charts/reservoir\_elevation\_and\_storage.png

```



Shows reservoir elevation and storage observations.



\## 3. Storage and Outflow



```text

charts/storage\_and\_outflow.png

```



Shows the relationship between reservoir storage and outflow observations.



\## 4. Reservoir and Tailwater Elevation



```text

charts/Reservoir\_elevation\_and\_tailwater\_elevation.png

```



Shows reservoir elevation and downstream tailwater elevation.



\---



\# Raster Data



The project includes three final raster datasets:



```text

raster data/

├── ndwi\_afl.tif

├── projected\_srtm.tif

└── wm\_afl\_v0.tif

```



\## `ndwi\_afl.tif`



NDWI raster generated from Sentinel-2 imagery and used in the reservoir water-extraction workflow.



\## `wm\_afl\_v0.tif`



Final water-mask raster used to prepare the reservoir boundary.



\## `projected\_srtm.tif`



Projected and resampled SRTM DEM used for terrain visualization.



\### Git LFS



The following large raster files are stored using \*\*Git Large File Storage (Git LFS)\*\*:



```text

ndwi\_afl.tif

projected\_srtm.tif

```



\---



\# GIS Data



The project provides a GeoPackage:



```text

gis\_data/fort\_peck.gpkg

```



The GeoPackage contains the GIS layers created and prepared in ArcGIS Pro.



The `usgs\_station` dataset is maintained separately and is not included in the GeoPackage.



\---



\# PostgreSQL / PostGIS



The project also includes a PostgreSQL/PostGIS workflow for preparing the USGS station dataset.



SQL file:



```text

sql query/usgs\_station.sql

```



This SQL file contains the PostgreSQL/PostGIS workflow used to prepare the USGS station dataset.



\---



\# Overall Workflow



The complete project workflow can be summarized as follows.



\## Remote Sensing Workflow



```text

Sentinel-2 Imagery

&#x20;       ↓

Mosaic / Composite

&#x20;       ↓

NDWI

&#x20;       ↓

Water Mask

&#x20;       ↓

Initial Reservoir Polygon

&#x20;       ↓

Manual Editing in ArcGIS Pro

&#x20;       ↓

Final Reservoir Polygon

&#x20;       ↓

GIS Mapping / GeoPackage

```



\## Terrain Processing Workflow



```text

SRTM DEM

&#x20;       ↓

Mosaic

&#x20;       ↓

Projection

&#x20;       ↓

10 m Output Cell Size

&#x20;       ↓

Terrain Visualization

```



\## Hydrologic Time-Series Workflow



```text

Reservoir / USGS Observations

&#x20;       ↓

Time-Series Processing

&#x20;       ↓

Define 24-Hour Flow Period

&#x20;       ↓

Calculate Mean Inflow / Mean Outflow

&#x20;       ↓

Match Flow Averages to 11:00 AM Observation

&#x20;       ↓

Daily Observation Dataset

&#x20;       ↓

Charts and Analysis

```



\---



\# Project Structure



```text

fort-peck-reservoir-analysis/

│

├── README.md

├── .gitignore

├── .gitattributes

│

├── charts/

│   ├── Reservoir\_elevation\_and\_tailwater\_elevation.png

│   ├── inflow\_outflow\_discharge.png

│   ├── reservoir\_elevation\_and\_storage.png

│   └── storage\_and\_outflow.png

│

├── excel file/

│   └── fort\_peck\_daily\_observations.xlsx

│

├── gis\_data/

│   └── fort\_peck.gpkg

│

├── maps/

│   ├── fort\_peck\_basemap.jpg

│   └── fort\_peck\_reservoir.jpg

│

├── raster data/

│   ├── ndwi\_afl.tif

│   ├── projected\_srtm.tif

│   └── wm\_afl\_v0.tif

│

└── sql query/

&#x20;   └── usgs\_station.sql

```



\---



\# Software and Tools



The project was developed using the following software and technologies:



\- \*\*ArcGIS Pro\*\* — GIS processing, raster analysis, mapping, and manual editing

\- \*\*PostgreSQL\*\* — Database management

\- \*\*PostGIS\*\* — Spatial database operations

\- \*\*pgAdmin 4\*\* — PostgreSQL database administration

\- \*\*Microsoft Excel\*\* — Hydrologic time-series processing

\- \*\*Git\*\* — Version control

\- \*\*GitHub\*\* — Project repository and documentation

\- \*\*Git LFS\*\* — Large raster file storage



\---



\# Notes and Limitations



\- The reservoir boundary was initially derived from an NDWI-based water mask and was subsequently manually edited in ArcGIS Pro.

\- Automated NDWI-based extraction did not accurately represent the reservoir boundary in all areas, which required manual correction.

\- The SRTM DEM was resampled to a \*\*10 m output cell size\*\* to align with the Sentinel-2 grid. This does not represent the native spatial resolution of the original SRTM dataset.

\- Daily mean inflow and outflow represent the defined \*\*24-hour periods ending at 11:00 AM\*\*, rather than simple calendar-day averages.

\- Reservoir elevation, storage, and tailwater elevation were retained at the \*\*11:00 AM observation time\*\*.

\- The project focuses on GIS, remote sensing, and observational hydrologic data analysis.

\- This project does \*\*not\*\* attempt to perform a full hydraulic or hydrologic model.

\- The original source Excel files and intermediate processing files are not included in the repository.

\- Large raster datasets are managed using Git LFS.



\---



\# Author



\*\*Md Abu Sufian\*\*



GIS Analyst | Remote Sensing | GIS \& Spatial Data Analysis

