/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ID]
      ,[KLUCZ]
      ,[FILES]
      ,[OPIS]
  FROM [DRA_TESTY].[dbo].[SCORING_test_xml_out]
  --where CAST([FILES] as varchar(max)) like '%"RATING" value="2"%'  
  where CAST([FILES] as varchar(max)) like '%"CZY_KLIENT_MA_HIST_BIK" value="FALSE"%'