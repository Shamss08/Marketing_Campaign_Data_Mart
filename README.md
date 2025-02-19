# Marketing Campaign Data Mart
## Overview
This project is designed to implement a Marketing Campaign Data Mart that is built with a Star Schema and utilizes Slowly Changing Dimensions (SCD) to track historical changes. The data mart sources data from an Excel file [Marketing_Campaign_Analysis_Dataset.xlsx](https://github.com/Shamss08/Marketing_Campaign_Data_Mart/blob/main/Marketing_Campaign_Analysis_Dataset.xlsx), which is processed using SQL Server Integration Services (SSIS) for ETL (Extract, Transform, Load) operations. The data mart is hosted in SQL Server and is structured for efficient querying and reporting.
## Modeling Step
The data model follows a Star Schema design, which is one of the most efficient ways to organize data for analytics and reporting. The model consists of a central fact table surrounded by dimension tables, each containing descriptive information related to the facts. In this model, we also implemented **Slowly Changing Dimensions (SCD)** to track changes over time in specific dimension attributes.
![Data Mart](https://github.com/Shamss08/Marketing_Campaign_Data_Mart/blob/main/Marketing_Campaign_DWH.png)
## ETL Steps
1. Fact Table :
   - FactCampaignPerformance :
     ![FactCampaignPerformance](https://github.com/Shamss08/Marketing_Campaign_Data_Mart/blob/main/etl_steps/Fact_CampaignPerformance.PNG)
2. Dimension Tables :
   - Dim_Ad :
     ![Dim_Ad](https://github.com/Shamss08/Marketing_Campaign_Data_Mart/blob/main/etl_steps/Dim_Ad.PNG)
   - Dim_Campaign :
     ![Dim_Campaign](https://github.com/Shamss08/Marketing_Campaign_Data_Mart/blob/main/etl_steps/Dim_Campaign.PNG)
   - Dim_Channel :
     ![Dim_Channel](https://github.com/Shamss08/Marketing_Campaign_Data_Mart/blob/main/etl_steps/Dim_Channel.PNG)
   - Dim_Device :
     ![Dim_Device](https://github.com/Shamss08/Marketing_Campaign_Data_Mart/blob/main/etl_steps/Dim_Device.PNG)
   - Dim_Location :
     ![Dim_Location](https://github.com/Shamss08/Marketing_Campaign_Data_Mart/blob/main/etl_steps/Dim_Location.PNG)
