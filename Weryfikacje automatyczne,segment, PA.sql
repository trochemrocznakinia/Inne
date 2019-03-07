select top 1 
          skre.[SKRE_ID]
      ,skre.[SKRE_NUMER_WNIOSKU]
      ,skre.[SKRE_CZY_PREAPPROVED]
         ,skre.[DATA_UTWORZENIA]
         ,waut.[WAUT_CBS_ESLO_RWER_ID]
         ,waut.[WAUT_DANE_WYNIKOWE]
  from [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_SPRAWY_KREDYTOWE] skre
  inner join [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_UCZESTNICY_SPRAW_KREDYTOWYCH] uskr on skre.[SKRE_ID] = uskr.[USKR_SKRE_ID]
  inner join [CBWG].[SCH_KLIENCI].[T_WERSJE_DANYCH_UCZESTNIKOW] wduc on uskr.[USKR_ID] = wduc.[WDUC_USKR_ID]
  inner join [CBWG].[SCH_ZADANIA].[T_WERYFIKACJE_AUTOMATYCZNE] waut on wduc.[WDUC_ID] = waut.[WAUT_WDUC_ID]
  where skre.[SKRE_CZY_PREAPPROVED] = 0 
       and waut.[WAUT_CBS_ESLO_RWER_ID] = 5805
       and CAST(waut.[WAUT_DANE_WYNIKOWE] as varchar(max)) like '%<CUST_PROFILE>Noble</CUST_PROFILE>%' --'%<CUST_PROFILE>%'
       and skre.[DATA_UTWORZENIA] < '2017-12-20 00:00:00.000'
  order by skre.[SKRE_ID] desc 
