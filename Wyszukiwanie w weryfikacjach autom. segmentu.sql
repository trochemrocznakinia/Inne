SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT top 1 [ULOG_ID], DOSO_PESEL--, SKRE_ID
      ,[ULOG_SKRE_ID]
      ,[ULOG_WDUC_ID]
      ,[ULOG_CBS_ESLO_STAT_ID]
      ,[ULOG_XML_IN]
      ,[ULOG_XML_OUT]
      ,[ULOG_ERROR]
      ,[ULOG_CBS_ESLO_RWER_ID],  Harm.query('./CUST_PROFILE').value('(/CUST_PROFILE)[1]', 'varchar(max)') DATA--, *
  FROM [CBWG].[SCH_KLIENCI].[T_KREDUR_UCZESTNICY_LOG] HL
       CROSS APPLY HL.ULOG_XML_OUT.nodes('/DEF/UCZESTNIK/GETIN_API/CUSTOMER') as T(Harm) 
--     inner join [CBWG].sch_sprawy_kredytowe.T_sprawy_kredytowe sk on sk.SKRE_ID = HL.ULOG_SKRE_ID
--     inner join [CBWG].sch_sprawy_kredytowe.T_UCZESTNICY_SPRAW_KREDYTOWYCH usk on sk.SKRE_ID = usk.USKR_SKRE_ID
inner join [CBWG].[SCH_KLIENCI].T_WERSJE_DANYCH_UCZESTNIKOW on WDUC_ID = ULOG_WDUC_ID

inner join  [CBWG].[SCH_KLIENCI].T_DANE_OSOBOWE on WDUC_DOSO_ID = DOSO_ID
       where Harm.query('./CUST_PROFILE').value('(/CUST_PROFILE)[1]', 'varchar(max)') = 'Private Banking'

       --order by [ULOG_ID] desc
