Group name: group 14

UNIs: Alex Wang: yw3917, Muyu Yang: my2779
### Project Description
The task involves analyzing data from Uber rides and NYC Yellow taxi rides, as well as historical weather data from 2009 to 2015. The objective is to understand the trends and reasons behind the long-standing conflict between Uber and taxis. The data will be downloaded and cleaned, stored in a SQLite database, and visualized using a Jupyter notebook and SQL queries. The Yellow taxi data will be obtained as Parquet files, and for some months, the pickup and dropoff locations are given as IDs. To convert the IDs to latitude/longitude, the "Taxi Zone Shapefile (PARQUET)" file needs to be downloaded and unzipped. The analysis will not include Green taxi trips or FHV trips.

The project involves three parts:
In Part 1, we need to preprocess the data before analyzing it. We must download the Yellow Taxi Parquet files programmatically using requests and BeautifulSoup. We will clean and filter the data using pandas and geopandas, including looking up latitude and longitude for some months where only location IDs are given for pickups and dropoffs, removing unnecessary columns, removing invalid data points, and normalizing column names and types. We will remove trips that start and/or end outside of the given latitude/longitude coordinate box. We will generate a sampling of Yellow Taxi data that is roughly equal to the sample size of the Uber dataset. We will calculate the distance between the pickup and dropoff locations using a function that only uses the math module from Python's standard library and add a column to each Uber and Yellow Taxi dataset that contains the distance between the pickup and dropoff location.

In Part 2, the focus is on storing the preprocessed datasets generated in Part 1 into a SQLite database. The first step is to create the SQLite database using SQLAlchemy or sqlite36. Four tables need to be created and populated: one for the sampled datasets of Yellow Taxi trips, one for Uber trips, one for hourly weather information, and one for daily weather information. Appropriate data types should be used for each column. Finally, a schema.sql file needs to be created that defines each table's schema. This file can be generated using SQLAlchemy within the notebook or created manually.

In Part 3, the focus is on using SQL queries to gain insights and a better understanding of the datasets that were preprocessed and stored in Part 1 and Part 2, respectively.

### Project Division
Alex: part 1
Muyu: part 2
Alex and Muyu: part 3
