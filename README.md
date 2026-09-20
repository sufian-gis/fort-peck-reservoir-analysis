# Fort Peck Reservoir GIS and Remote Sensing Analysis

A GIS, remote sensing, and hydrologic data analysis project focused on **Fort Peck Reservoir, Montana, USA**.

This project integrates **Sentinel-2 satellite imagery, SRTM elevation data, ArcGIS Pro, PostgreSQL/PostGIS, USGS observations, U.S. Army Corps of Engineers data, and Excel-based time-series processing** to investigate reservoir water extent, terrain, spatial features, and daily hydrologic observations.

The project demonstrates a combination of **remote sensing, raster processing, GIS analysis, spatial database management, and hydrologic time-series processing**.

---

# Project Workflow

The project combines four main components: remote sensing, terrain processing, GIS data preparation, and hydrologic time-series analysis.

```text
Sentinel-2 Imagery
        ↓
Mosaic / Composite
        ↓
NDWI Calculation
        ↓
Water Mask
        ↓
Initial Reservoir Polygon
        ↓
Manual Editing in ArcGIS Pro
        ↓
Final Reservoir Polygon
        ↓
GIS Data Preparation
        ↓
GeoPackage
```

```text
SRTM DEM
        ↓
Mosaic
        ↓
Projection
        ↓
10 m Output Cell Size
        ↓
Terrain Visualization
```

```text
USGS / Reservoir Observations
        ↓
Time-Series Processing
        ↓
Define 24-Hour Flow Period
        ↓
Calculate Mean Inflow / Mean Outflow
        ↓
Match Flow Averages to 11:00 AM Observation
        ↓
Daily Observation Dataset
        ↓
Charts and Analysis
```

```text
PostgreSQL / PostGIS
        ↓
USGS Station Preparation
        ↓
Spatial Reference and Attribute Preparation
        ↓
usgs_station Dataset
        ↓
GeoPackage
```

---

# Project Overview

The project focuses on the spatial and temporal analysis of Fort Peck Reservoir using satellite imagery, elevation data, GIS datasets, and observed hydrologic data.

The main components of the project include:

* Reservoir water extraction from Sentinel-2 imagery
* NDWI calculation and water-mask generation
* Manual refinement of the reservoir boundary
* SRTM DEM processing for terrain visualization
* GIS data preparation in ArcGIS Pro
* USGS station preparation using PostgreSQL/PostGIS
* Export of final GIS datasets to a GeoPackage
* Processing of reservoir and river observations
* Calculation of daily 24-hour mean inflow and outflow
* Analysis of reservoir elevation, storage, inflow, outflow, and tailwater elevation
* Production of maps, charts, raster datasets, and GIS data for portfolio presentation

---

# Objectives

The main objectives of this project are to:

1. Map Fort Peck Reservoir and surrounding geographic features.
2. Extract the reservoir water boundary using Sentinel-2 imagery and the Normalized Difference Water Index (NDWI).
3. Improve the automatically extracted water boundary through manual editing in ArcGIS Pro.
4. Process SRTM DEM data for terrain visualization.
5. Prepare GIS datasets for spatial visualization and analysis.
6. Create and prepare the USGS monitoring station dataset using PostgreSQL/PostGIS.
7. Combine the GIS datasets into a final GeoPackage.
8. Calculate daily 24-hour mean inflow and outflow.
9. Analyze reservoir elevation, storage, inflow, outflow, and tailwater elevation.
10. Produce reproducible GIS, remote sensing, and time-series outputs suitable for portfolio presentation.

---

# Data Sources

## Sentinel-2

Multiple Sentinel-2 scenes were used for reservoir water extraction and preparation of the reservoir boundary.

The imagery was processed to generate an **NDWI raster** and an initial water mask representing the reservoir water extent.

The initial water extraction was subsequently reviewed and manually corrected in ArcGIS Pro.

---

## SRTM

SRTM Digital Elevation Model (DEM) data were used for terrain visualization around Fort Peck Reservoir.

The SRTM datasets were:

* Mosaicked
* Projected
* Resampled to a 10 m output cell size

The 10 m output cell size was selected to align the processed DEM with the 10 m Sentinel-2 grid.

This resampling does **not** represent the native spatial resolution of the original SRTM dataset.

---

## Reservoir and Hydrologic Data

Reservoir and river observation data were obtained from publicly available U.S. government sources, including datasets associated with the **U.S. Army Corps of Engineers** and **USGS**.

The processed daily observation dataset includes:

* Date
* Time
* Reservoir elevation
* Reservoir storage
* Tailwater elevation
* Mean inflow
* Mean outflow
* 24-hour flow period

---

# Methodology

## 1. Reservoir Boundary Extraction

The initial reservoir boundary was derived from a Sentinel-2-based **Normalized Difference Water Index (NDWI)** workflow.

The automated water extraction did not accurately represent the reservoir boundary in all areas. Therefore, the initial reservoir polygon was manually edited in **ArcGIS Pro** to correct areas where the automated extraction did not accurately represent the reservoir.

### Workflow

```text
Sentinel-2 Imagery
        ↓
Mosaic / Composite
        ↓
NDWI
        ↓
Water Mask
        ↓
Initial Reservoir Polygon
        ↓
Manual Editing in ArcGIS Pro
        ↓
Final Reservoir Polygon
```

The final reservoir boundary was used for mapping and GIS visualization.

---

## 2. SRTM DEM Processing

SRTM elevation data were processed to prepare a terrain dataset for visualization of the reservoir surroundings.

### Workflow

```text
SRTM DEM
   ↓
Mosaic
   ↓
Projection
   ↓
10 m Output Cell Size
   ↓
Terrain Visualization
```

The processed DEM is provided as:

```text
raster data/projected_srtm.tif
```

The 10 m cell size was selected for compatibility with the Sentinel-2 spatial grid. It should not be interpreted as an increase in the native spatial resolution of the SRTM source data.

---

# GIS Data Preparation

The project uses GIS datasets prepared through two complementary workflows.

### ArcGIS Pro Workflow

The main spatial layers were created, edited, and prepared in **ArcGIS Pro**.

These include the reservoir boundary and other project GIS layers used for mapping and spatial visualization.

### PostgreSQL / PostGIS Workflow

The `usgs_station` dataset was prepared separately using **PostgreSQL/PostGIS through pgAdmin 4**.

This workflow was used to create and prepare the USGS monitoring station dataset, including its spatial reference and attribute information.

The `usgs_station` dataset was then included in the final GeoPackage along with the other GIS datasets.

The final GIS data are provided as:

```text
gis_data/fort_peck.gpkg
```

The GeoPackage contains the project GIS layers, including the **`usgs_station` dataset created using PostgreSQL/PostGIS**.

---

# USGS Station Dataset

## Station Information

The `usgs_station` dataset represents USGS monitoring station **06132000**, located downstream of Fort Peck Dam.

### Station Details

| Field        | Information                           |
| ------------ | ------------------------------------- |
| Station ID   | 06132000                              |
| Station Name | Missouri River below Fort Peck Dam MT |
| Location     | McCone County, Montana                |
| Latitude     | 48.044425°                            |
| Longitude    | -106.3562583°                         |

The station is located downstream of Fort Peck Dam and is used as a reference location for analyzing observed river conditions in relation to Fort Peck Reservoir and dam operations.

---

## Spatial Reference

| Field                      | Information                   |
| -------------------------- | ----------------------------- |
| Horizontal Datum           | NAD83                         |
| Coordinate System          | NAD 1983                      |
| EPSG                       | 4269                          |
| Geometry Type              | Point                         |
| Horizontal Location Method | Interpolated from Digital MAP |
| Horizontal Accuracy        | 0.1 arc-second                |

---

## Elevation Information

| Field                                | Information                       |
| ------------------------------------ | --------------------------------- |
| Site Elevation                       | 2,018 ft                          |
| Elevation Method                     | Interpolated from topographic map |
| Elevation Accuracy                   | 1 ft                              |
| Vertical Coordinate Reference System | NGVD29                            |

The station metadata are included to document the station's location, spatial reference, and elevation reference.

---

# 24-Hour Mean Inflow and Outflow

Daily mean inflow and outflow were calculated using a **24-hour observation period ending at 11:00 AM**.

For each observation date, the flow period was defined as:

```text
12:00 PM Previous Day
        ↓
    24 Hours
        ↓
11:00 AM Observation Date
```

### Example

For the observation date **July 1**, the associated flow period was:

```text
12:00 PM June 30
        ↓
    24 Hours
        ↓
11:00 AM July 1
```

Mean inflow and mean outflow were calculated from the flow observations recorded within each defined 24-hour period.

Reservoir storage, reservoir elevation, and tailwater elevation were retained at the **11:00 AM observation time**.

This produced a daily observation dataset in which the flow averages correspond to the same daily 11:00 AM observation used for the reservoir measurements.

---

# Daily Observation Dataset

The processed Excel file is:

```text
excel file/fort_peck_daily_observations.xlsx
```

The dataset contains the processed daily observations used to create the time-series charts and perform the analysis.

The original source Excel files and intermediate processing files are **not included** in the GitHub repository.

---

# Maps

The project contains two final map outputs, each designed for a different visualization purpose.

## Fort Peck Basemap

```text
maps/fort_peck_basemap.jpg
```

The basemap presents the **Fort Peck Reservoir polygon and other GIS datasets** prepared for the project. It focuses on the main spatial features and does not include terrain visualization.

## Fort Peck Reservoir Map

```text
maps/fort_peck_reservoir.jpg
```

The reservoir map provides a broader spatial view of **Fort Peck Reservoir, the dam, spillway, river sections, surrounding geographic features, and terrain context**. The processed SRTM DEM is used to provide the terrain background for this map.

---

# Charts

The project contains four final charts.

## 1. Daily Mean Inflow and Outflow

```text
charts/inflow_outflow_discharge.png
```

Shows daily mean reservoir inflow and outflow discharge over the observation period.

## 2. Reservoir Elevation and Storage

```text
charts/reservoir_elevation_and_storage.png
```

Shows reservoir elevation and storage observations.

## 3. Storage and Outflow

```text
charts/storage_and_outflow.png
```

Shows the relationship between reservoir storage and outflow observations.

## 4. Reservoir and Tailwater Elevation

```text
charts/Reservoir_elevation_and_tailwater_elevation.png
```

Shows reservoir elevation and downstream tailwater elevation.

---

# Raster Data

The project includes three final raster datasets:

```text
raster data/
├── ndwi_afl.tif
├── projected_srtm.tif
└── wm_afl_v0.tif
```

## `ndwi_afl.tif`

NDWI raster generated from Sentinel-2 imagery and used in the reservoir water-extraction workflow.

## `wm_afl_v0.tif`

Final water-mask raster used to prepare the reservoir boundary.

## `projected_srtm.tif`

Projected and resampled SRTM DEM used for terrain visualization.

## Git LFS

The following large raster files are stored using **Git Large File Storage (Git LFS)**:

```text
ndwi_afl.tif
projected_srtm.tif
```

---

# GIS Data

The project provides the final GIS datasets as a GeoPackage:

```text
gis_data/fort_peck.gpkg
```

The GeoPackage contains the GIS layers prepared for the project.

The datasets were produced through two workflows:

* **ArcGIS Pro** — creation, editing, processing, and preparation of the main GIS layers
* **PostgreSQL/PostGIS** — creation and preparation of the `usgs_station` dataset

The `usgs_station` dataset was created using PostgreSQL/PostGIS through pgAdmin 4 and subsequently included in the final GeoPackage.

---

# PostgreSQL / PostGIS

The project includes a PostgreSQL/PostGIS workflow for preparing the USGS station dataset.

SQL file:

```text
sql query/usgs_station.sql
```

This SQL file contains the PostgreSQL/PostGIS workflow used to create and prepare the `usgs_station` dataset.

The workflow demonstrates the use of a spatial database to manage the USGS monitoring station before incorporating the dataset into the final project GeoPackage.

---

# Overall Workflow

The complete project workflow can be summarized as follows.

## Remote Sensing Workflow

```text
Sentinel-2 Imagery
        ↓
Mosaic / Composite
        ↓
NDWI
        ↓
Water Mask
        ↓
Initial Reservoir Polygon
        ↓
Manual Editing in ArcGIS Pro
        ↓
Final Reservoir Polygon
        ↓
GIS Mapping / GeoPackage
```

## Terrain Processing Workflow

```text
SRTM DEM
   ↓
Mosaic
   ↓
Projection
   ↓
10 m Output Cell Size
   ↓
Terrain Visualization
```

## GIS and Spatial Database Workflow

```text
GIS Layers
   ↓
ArcGIS Pro Processing
   ↓
Final GIS Layers
   ↓
          ┌─────────────────────┐
          │                     │
          ↓                     ↓
   PostgreSQL / PostGIS     ArcGIS Pro
          ↓                     ↓
   usgs_station Dataset    Other GIS Layers
          │                     │
          └──────────┬──────────┘
                     ↓
              Final GeoPackage
```

## Hydrologic Time-Series Workflow

```text
Reservoir / USGS Observations
        ↓
Time-Series Processing
        ↓
Define 24-Hour Flow Period
        ↓
Calculate Mean Inflow / Mean Outflow
        ↓
Match Flow Averages to 11:00 AM Observation
        ↓
Daily Observation Dataset
        ↓
Charts and Analysis
```

---

# Project Structure

```text
fort-peck-reservoir-analysis/
│
├── README.md
├── .gitignore
├── .gitattributes
│
├── charts/
│   ├── Reservoir_elevation_and_tailwater_elevation.png
│   ├── inflow_outflow_discharge.png
│   ├── reservoir_elevation_and_storage.png
│   └── storage_and_outflow.png
│
├── excel file/
│   └── fort_peck_daily_observations.xlsx
│
├── gis_data/
│   └── fort_peck.gpkg
│
├── maps/
│   ├── fort_peck_basemap.jpg
│   └── fort_peck_reservoir.jpg
│
├── raster data/
│   ├── ndwi_afl.tif
│   ├── projected_srtm.tif
│   └── wm_afl_v0.tif
│
└── sql query/
    └── usgs_station.sql
```

---

# Software and Tools

The project was developed using the following software and technologies:

* **ArcGIS Pro** — GIS processing, raster analysis, mapping, and manual editing
* **PostgreSQL** — Database management
* **PostGIS** — Spatial database operations
* **pgAdmin 4** — PostgreSQL database administration
* **Microsoft Excel** — Hydrologic time-series processing
* **Git** — Version control
* **GitHub** — Project repository and documentation
* **Git LFS** — Large raster file storage

---

# Notes and Limitations

* The reservoir boundary was initially derived from an NDWI-based water mask and was subsequently manually edited in ArcGIS Pro.
* Automated NDWI-based extraction did not accurately represent the reservoir boundary in all areas, which required manual correction.
* The SRTM DEM was resampled to a **10 m output cell size** to align with the Sentinel-2 grid. This does not represent the native spatial resolution of the original SRTM dataset.
* Daily mean inflow and outflow represent the defined **24-hour periods ending at 11:00 AM**, rather than simple calendar-day averages.
* Reservoir elevation, storage, and tailwater elevation were retained at the **11:00 AM observation time**.
* The `usgs_station` dataset was created using PostgreSQL/PostGIS and is included in the final GeoPackage.
* The project focuses on GIS, remote sensing, and observational hydrologic data analysis.
* This project does **not** attempt to perform a full hydraulic or hydrologic model.
* The original source Excel files and intermediate processing files are not included in the repository.
* Large raster datasets are managed using Git LFS.

---

# Author

**Md Abu Sufian**

GIS Analyst | Remote Sensing | GIS & Spatial Data Analysis


