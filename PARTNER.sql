/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [APOD_ID]
	  ,[APOD_PODM_ID]
	  ,podm.[PODM_ID]
      ,(SELECT podm.[PODM_NAZWA_PELNA] from [CBP].[SCH_PODMIOTY].[T_PODMIOTY] as podm where (apod.[APOD_PODM_ID] = podm.[PODM_ID])) as [NAZWA_PODMIOTU]
      ,[APOD_TAPO_ID]
      ,[APOD_WARTOSC_N]
      ,[APOD_WARTOSC_Z]
      ,[APOD_WARTOSC_L]
      ,[APOD_WARTOSC_D]
      ,[APOD_CBS_ESLO_STAT_ID]
      ,[APOD_DATA_UTWORZENIA]
      ,[APOD_UTWORZYL]
      ,[APOD_DATA_MODYFIKACJI]
      ,[APOD_MODYFIKOWAL]
      ,[APOD_DATA_OD]
      ,[APOD_DATA_DO]
  FROM [CBP].[SCH_PODMIOTY].[T_ATRYBUTY_PODMIOTOW] AS apod
  inner join [CBP].[SCH_PODMIOTY].[T_PODMIOTY] as podm on apod.[APOD_PODM_ID] = podm.[PODM_ID]
  WHERE [APOD_TAPO_ID] = 36 and 
		[APOD_CBS_ESLO_STAT_ID] = 78 and
		([APOD_DATA_OD] <= getdate() and getdate() <= [APOD_DATA_DO]) and
		[APOD_WARTOSC_N] = 5809 and 
		podm.[PODM_CBS_ESLO_STAT_ID] = 78
  order by [APOD_DATA_UTWORZENIA] desc