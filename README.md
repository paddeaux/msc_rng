# MSc Data Science & Analytics Project - Random Spatial Data Generation with Python
This repo holds everything for my MSc in Data Science project. The project involves the creation of a Python tool to generate realistic random spatial data for use in assessment

## Section 1: Point Generation

Point generation is currently available at two scales **Macro**, i.e. at an inputted main polygon level, and **Micro**, at a more localized level.

### Macro Generation

A Python function has been created to produce randomly generated spatial data points, located inside a given Polygon in GeoJSON format. The function is able to produce multiple forms of random generationg using a mix of local and source-level generation.

#### 1) Original Centroid
The primary method of generation utilizes Voronoi-based buffers to produce 5 concentric regions centred around the polygon centroid, with each of these regions being assigned an equal number of points to be generated. The result of this is points generationg which is concentrated towards the given centroid, with the density of points decreasing the furhter away from the centroid, **producing an effect similar to that of a real life set of points in a metropolitan area**.

#### 2) Moving Centroid
The above generation can be performed using the original true polygon centroid, or through the generation of a "moving centroid" which is a randomly generated centroid in an eliptical area around the true centroid. This will in turn cause the resulting Voronoi-buffer regions to be shifted in the x/y axis according to the position of the generated moving centroid in relation to the original centroid. **This reflects the real world fact of the administrative or metropolitan centre of a an area not necessarily being located at the exact geographic centre of the region.**

### Micro Generation:
The function allows for more granular points generation through the addition of local-level generation in multiple ways.

#### 0) No Local Generation:
The function allows for just Macro-level generation, by setting the corresponding local parameters to zero, thus removing the local generation entirely

#### 1) Equal Area Local Generation:
The equal area local generation generates approximately equal-area Voronoi regions inside the source Polygon and then generates an equal proportion of points in each of these local polygons.

#### 2) Variable Area Local Generation: Equal Points
This generation produces Voronoi regions of varying size, with smaller regions concentrated towards the centroid of the polygon. These regions are assigned an equal number of points in each.

#### 3) Variable Area Local Generation: Points by Area
This generation produces Voronoi regions of varying size, with smaller regions concentrated towards the centroid of the polygon. These regions are assigned points based on the area of each region, i.e. regions with larger area are allocated more points than smaller regions.

## Section 2: Output

The output feature of the tool is incredibly important as it allows students to be able to freely make use of the generated dataset. As a pre-processing step before any file export, the final points dataset is stored as a GeoPandas GeoDataframe.

### 1) GeoJSON
Exporting of the data to GeoJSON format is very simple thanks to the extensive use of the GeoPandas package, which includes simplified exporting of GeoDataFrames to GeoJSON with a built in function.

### 2) SQL
The exporting to SQL requires a great deal more thought than the exporting to geojson. GeoPandas has native compatibility for GeoJSON, allowing data to be exported in this way at the call of a function. The same can not be said for SQL. Through some simple manipulation of the columns and some checks for the data types, an SQL file can be written which will contain the table creation and insert statements for a PostgreSQL database of the generated spatial points.

### 3) Plotting
The tool offers the ability to display the outputted points on a Matplotlib map to demonstrate both the final set of points as well as the intermediate steps and buffers/polygons generated to reach that last dataframe.

### 4) Animation
The tool has limited animation functionality. Currently the Matplotlib animate features are implemented to allow a Map animation showing each of the final points in the generated data set. The primary issue with this currently is the slow speed at which each frame of animation can be rendered.



## Planned Functionality:

* Generation of realistic random spatial data:
  * Data points to be distributed in a random fashion that behaves like real-world spatial data points (patterns, clustering, distance to roads/borders/etc.)
  * Points will have randomly generated realistic meta-data, such as names and various attributes, depending on the type of points being generated
* Exporting of data to a GeoJSON format
* Exporting of data to a PostgreSQL format


