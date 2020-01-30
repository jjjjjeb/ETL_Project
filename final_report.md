# ETL Process
## Project 2, Group 5

### Github Participants:
* @ronak-ops - Ronak Chandgadhia
* @jkim6367 - Jeff Kim 
* @angievizca - Angelica Vizcaino
* @jjjjjeb - Jamie Bruno

## Project:

* We looked into World Bank's development indicators to create a pipeline isolating a comprehensive and current data set that allows the user to compare Russia, China, and the USA. 

## Data Sources:
Process: 
* Kaggle → 
    * World Bank Development Indicators → 
        * World Bank →
            * Data Help Desk [Developer Information (API Queries)](https://datahelpdesk.worldbank.org/knowledgebase/topics/125589)
            * Data Catalogue
            [Data Catalogue (CSV)](https://datacatalog.worldbank.org/dataset/world-development-indicators)


![Fig](https://orientalreview.org/wp-content/uploads/2019/12/Integration-Models.jpg)

## Extraction: 
We extracted the API data for country and indicator values from 2015-2019 from the Data Help Deck at World Bank's Website.  We used python modules requests, json and Beautiful Soup.  

We pulled the indicator values CSV table from the World Bank's Data Catalogue  for historical values for the indicators, from 1960 to 2015. For this we simply used pandas to read the CSV file.

## Transformation:
In the case of the API's we transformed our datasets by looping and appending desired information into lists and using pandas to create a DataFrame.

We cleaned the dataset by renaming and dropping columns and empty values.

We also used functions like loc, zip, and concat to filter and combine the information we needed into normalized dataframes ready loading into a sequel table. 

## Loading:
We chose postgres for the final production database. The dataset values were strings, floats, and integers and we felt the simplicity and predictability of the dataset was appropriate for a sequel server.

We transformed our data into three tables:
1. A 'country' table with the country name and country code, a primary key.
2. A 'indicator' table with the indicator name's and indicator codes, also a primary key
3. A 'values' table with the country code (foreign key), indicator code (foreign key), the listed values (a float), and the year (an integer).

Our production team will be able to pull information using queries from the cleaned dataset to compare the three countries, or one country to the other quite easily. 