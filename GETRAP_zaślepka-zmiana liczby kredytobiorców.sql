/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ID]
      ,[POST_CODE]
      ,[NR_BORROWERS]
      ,[FILES]
      ,[OPIS]
  FROM [DRA_TESTY].[dbo].[GETRAP_test_xml_out]
  where post_code='11-111'

  --update [DRA_TESTY].[dbo].[GETRAP_test_xml_out]
  --set [NR_BORROWERS]=1
  --where [ID]=367