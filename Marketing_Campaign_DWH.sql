USE Marketing_DWH;

CREATE TABLE DimCampaign(
Campaign_ID_PK_SK INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Campaign_ID_BK INT  NOT NULL, 
Campaign VARCHAR(50),
StartDate datetime,
EndDate datetime,
SourceSystemCode tinyint,
IsCurrent bit
);

CREATE TABLE DimLocation(
Location_ID_PK_SK int primary key identity(1,1),
Location_ID_BK INT  NOT NULL,
City VARCHAR(50),
Latitude VARCHAR(10),
Longitude VARCHAR(10),
StartDate datetime,
EndDate datetime,
SourceSystemCode tinyint,
IsCurrent bit
);

CREATE TABLE DimChannel(
Channel_ID_PK_SK int primary key identity(1,1),
Channel_ID_BK INT  NOT NULL,
Channel VARCHAR(50),
StartDate datetime,
EndDate datetime,
SourceSystemCode tinyint,
IsCurrent bit
);


CREATE TABLE DimDevice(
Device_ID_PK_SK int primary key identity(1,1),
Device_ID_BK INT  NOT NULL,
Device VARCHAR(50),
StartDate datetime,
EndDate datetime,
SourceSystemCode tinyint,
IsCurrent bit
);

CREATE TABLE DimAd(
Ad_ID_PK_SK int primary key identity(1,1),
Ad_ID_BK INT  NOT NULL,
Ad VARCHAR(50),
StartDate datetime,
EndDate datetime,
SourceSystemCode tinyint,
IsCurrent bit
);


CREATE TABLE FactCampaignPerformance(
CampaignPerformance_ID_PK_SK int primary key identity(1,1),
Campaign_ID_FK INT foreign Key references DimCampaign(Campaign_ID_PK_SK),
Location_ID_FK INT foreign Key references DimLocation(Location_ID_PK_SK),
Channel_ID_FK INT foreign Key references DimChannel(Channel_ID_PK_SK),
Device_ID_FK INT foreign Key references DimDevice(Device_ID_PK_SK),
Ad_ID_FK INT foreign Key references DimAd(Ad_ID_PK_SK),
Date_ID_FK INT foreign Key references DimDate(DateSK),
Impressions float,
CTR float,
Clicks int,
DailyAverageCPC float,
Spend_GBP float,
Conversions int,
TotalConversionValue_GBP float,
Likes_Reactions int,
Shares int,
Comments int,
SourceSystemCode tinyint
);