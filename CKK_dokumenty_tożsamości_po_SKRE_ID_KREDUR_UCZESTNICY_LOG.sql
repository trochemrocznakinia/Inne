/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 10 [ULOG_ID]
      ,[ULOG_SKRE_ID]
      ,[ULOG_WDUC_ID]
      ,[ULOG_CBS_ESLO_STAT_ID]
      ,[ULOG_XML_IN]
      ,[ULOG_XML_OUT]
      ,[ULOG_ERROR]
      ,[CBUZ_UTWORZYL_ID]
      ,[DATA_UTWORZENIA]
      ,[CBUZ_MODYFIKOWAL_ID]
      ,[DATA_MODYFIKACJI]
      ,[ULOG_CBS_ESLO_RWER_ID]
  FROM [CBWG].[SCH_KLIENCI].[T_KREDUR_UCZESTNICY_LOG]
  where [ULOG_XML_OUT].value('count(/docSearchCustomersResponse/customers/identityDocuments)', 'INT') = 2 

 
