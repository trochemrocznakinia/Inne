--declare @skre_id int = 37213
select top 10
	 --waut.[WAUT_ID]
	 waut.[WAUT_WDUC_ID]
	--,uskr.[USKR_CBS_ESLO_FTRUCZ_ID]
	,(select eslo3.[ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] as eslo3 where (eslo3.[ESLO_ID] = uskr.[USKR_CBS_ESLO_FTRUCZ_ID])) as [Typ_uczestnika]
	--,waut.[WAUT_CBS_ESLO_RWER_ID]
	--,eslo.[ESLO_KOD]
	,eslo.[ESLO_NAZWA]
	--,waut.[WAUT_CBS_ESLO_FWWAUT_ID]
	,eslo2.[ESLO_NAZWA]
	--,waut.[WAUT_REZULTAT_WERYFIKACJI]
	,waut.[WAUT_DANE_WYNIKOWE]
	--,CAST(waut.[WAUT_DANE_WYNIKOWE] as varchar(max))
	--,waut.[WAUT_CZY_WERYFIKACJA_TEL_ZATRUDNIENIA]
	--,waut.[WAUT_CZY_WERYFIKACJA_TEL_ZAMIESZKANIA]
	--,waut.[WAUT_CZY_WERYFIKACJA_TEREN_ZATRUDNIENIA]
	--,waut.[WAUT_CZY_WERYFIKACJA_TEREN_ZAMIESZKANIA]
	--,waut.[WAUT_UTWORZYL]
	--,waut.[WAUT_CBS_ESLO_FKODMO_ID]
	--,waut.[CBUZ_UTWORZYL_ID]
	,waut.[DATA_UTWORZENIA]
	--,waut.[CBUZ_MODYFIKOWAL_ID]
	--,waut.[DATA_MODYFIKACJI]
	--,waut.[WAUT_CZY_WERYFIKACJA_TEL_ZLOZENIA_WNIOSKU]
	--,waut.[DATA_PART]
	,skre.SKRE_ID
	,skre.SKRE_NUMER_WNIOSKU
	,skre.[SKRE_CZY_PREAPPROVED]
  from [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_UCZESTNICY_SPRAW_KREDYTOWYCH] as uskr
  inner join [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_SPRAWY_KREDYTOWE] as skre on uskr.USKR_SKRE_ID = skre.SKRE_ID
  inner join [CBWG].[SCH_KLIENCI].[T_WERSJE_DANYCH_UCZESTNIKOW] as wduc on uskr.USKR_ID = wduc.WDUC_USKR_ID
  inner join [CBWG].[SCH_ZADANIA].[T_WERYFIKACJE_AUTOMATYCZNE] as waut on wduc.WDUC_ID = waut.WAUT_WDUC_ID
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] as eslo on waut.WAUT_CBS_ESLO_RWER_ID = eslo.ESLO_ID
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] as eslo2 on waut.WAUT_CBS_ESLO_FWWAUT_ID = eslo2.ESLO_ID
  where uskr.[USKR_CZY_AKTYWNY] = 1 and
		skre.[SKRE_CZY_PREAPPROVED]= 1
		--and (waut.[WAUT_CBS_ESLO_RWER_ID] = 9850)
		/*wduc.[WDUC_CBS_ESLO_STAW_ID] = 18 and*/
		and (waut.[WAUT_CBS_ESLO_RWER_ID] = 864)
		and eslo2.[ESLO_NAZWA] <> 'Weryfikacja pozytywna'
		 /*5836 ERIF*/ /*5835 KRD*/ /*2344 Weryfikacja automatyczna DEF*/ /*5805 DEF Segmentacja klienta*/ /*864 MIG-DZ*/ /*865 MIG-BR*/ /*868 CBKB*/
		--eslo.[ESLO_KOD] NOT IN ('SWAK', 'RSCOR', 'RBIK', 'RBPO', 'RBKR', 'RMAI', 'RCBP', 'SWCKP', 'BWFO', 'ZKRED', 'KODMO', 'MPORE', 'BMPO', 'CFD') and
		--and uskr.[USKR_SKRE_ID] = @skre_id
		--and CAST(WAUT_DANE_WYNIKOWE as varchar(max)) like '%<DT_WYP_KRE>%'
		and waut.[DATA_UTWORZENIA] > '2018-01-17 10:00:00.000'
		--and CAST(waut.[WAUT_DANE_WYNIKOWE] as varchar(max)) like '%<OCCUPATION>%'
  order by skre.SKRE_ID desc, waut.[DATA_UTWORZENIA] desc --, waut.[WAUT_WDUC_ID] asc, waut.[WAUT_ID] asc --waut.[WAUT_WDUC_ID] asc, waut.[DATA_UTWORZENIA] desc, waut.[WAUT_CBS_ESLO_RWER_ID]desc

 