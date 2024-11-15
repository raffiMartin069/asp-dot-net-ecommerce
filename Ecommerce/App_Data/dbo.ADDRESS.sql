﻿CREATE TABLE [dbo].[ADDRESS] (
    [AD_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [AD_STREET]   NVARCHAR (55) NOT NULL,
    [AD_BRGY]     NVARCHAR (55) NOT NULL,
    [AD_CITY]     NVARCHAR (55) NOT NULL,
    [AD_PROVINCE] NVARCHAR (55) NOT NULL,
    [AD_ZIPCODE]  NVARCHAR (55) NOT NULL,
    [A_ID]        INT           NOT NULL,
    [USER_ID]        INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([AD_ID] ASC),
    FOREIGN KEY ([A_ID]) REFERENCES [dbo].[ADMIN] ([A_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY ([USER_ID]) REFERENCES [dbo].[USER] ([USER_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

