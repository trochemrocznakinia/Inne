select
	   zobowKons.[ZKON_ID]
      ,zobowKons.[ZKON_WZKO_ID]
	  ,wersZobowKons.[WZKO_CBS_ESLO_STAW_ID]
      ,zobowKons.[ZKON_CBS_ESLO_FZKONS_ID]
	  ,(select eslo.[ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] as eslo where (eslo.[ESLO_ID] = zobowKons.[ZKON_CBS_ESLO_FZKONS_ID])) AS [Typ_zobow]
      ,zobowKons.[ZKON_CBS_ESLO_WALU_ID]
      ,zobowKons.[ZKON_BIEZ_SALDO_WALUTA]
      ,zobowKons.[ZKON_BIEZ_SALDO_PLN]
      ,zobowKons.[ZKON_LIMIT_WALUTA]
      ,zobowKons.[ZKON_RATA_WALUTA]
      ,zobowKons.[ZKON_RATA_PLN]
      ,zobowKons.[ZKON_CBS_BANK_ID]
      ,zobowKons.[ZKON_NAZWA_BANKU]
      ,zobowKons.[ZKON_NR_UMOWY]
      ,zobowKons.[ZKON_CBS_ESLO_FLSRAT_ID]
      ,zobowKons.[ZKON_CZY_KONSOLIDACJA_MOZLIWA]
      ,zobowKons.[ZKON_CZY_ZMIANA_Z_CBKB]
      ,zobowKons.[CBUZ_UTWORZYL_ID]
      ,zobowKons.[DATA_UTWORZENIA]
      ,zobowKons.[CBUZ_MODYFIKOWAL_ID]
      ,zobowKons.[DATA_MODYFIKACJI]
      ,zobowKons.[ZKON_NR_KONTA]
      ,zobowKons.[ZKON_DATA_AKTUALIZACJI]
      ,zobowKons.[ZKON_DATA_ZAMKNIECIA]
      ,zobowKons.[ZKON_DATA_OTWARCIA]
      ,zobowKons.[ZKON_CZY_KONSOLIDACJA_WYBRANA]
      ,zobowKons.[ZKON_CBS_ESLO_FZKRUC_KB1_ID]
      ,zobowKons.[ZKON_CBS_ESLO_FZKRUC_KB2_ID]
      ,zobowKons.[ZKON_CBS_ESLO_FZPZOB_ID]
      ,zobowKons.[ZKON_NR_TRANSAKSCJI_BIK]
      ,zobowKons.[ZKON_SALDO_NAL_WYM3M_PLN]
      ,zobowKons.[ZKON_KURS_WALUTY]
      ,zobowKons.[ZKON_CZY_POMINIETE]
      ,zobowKons.[ZKON_LICZBA_SPLAC_RAT_TERMINOWO]
      ,zobowKons.[ZKON_LICZBA_SPLAC_RAT]
      ,zobowKons.[ZKON_CZY_GETIN]
      ,zobowKons.[ZKON_LM_DKK]
      ,zobowKons.[ZKON_BIK_NAZWA_JED_SUB]
      ,zobowKons.[ZKON_BIK_BIEZ_SALDO_PLN]
      ,zobowKons.[ZKON_BIK_RATA_PLN]
      ,zobowKons.[DATA_PART]
      ,zobowKons.[ZKON_BIK_BIEZ_SALDO_WALUTA]
      ,zobowKons.[ZKON_WPLYW_NA_ZDOLNOSC]
  from [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_WERSJE_ZOBOWIAZAN_KONS] as wersZobowKons
  inner join [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_ZOBOWIAZANIA_KONS] as zobowKons on wersZobowKons.[WZKO_ID] = zobowKons.[ZKON_WZKO_ID]
  where wersZobowKons.[WZKO_CBS_ESLO_STAW_ID] = 18 and wersZobowKons.[WZKO_SKRE_ID] = 2294045

/* Suma rat PLN dla zobowi¹zañ konsolidowanych */
select
	sum(zobowKons.[ZKON_RATA_PLN])
	from [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_WERSJE_ZOBOWIAZAN_KONS] as wersZobowKons
	inner join [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_ZOBOWIAZANIA_KONS] as zobowKons on wersZobowKons.[WZKO_ID] = zobowKons.[ZKON_WZKO_ID]
	where zobowKons.[ZKON_CZY_KONSOLIDACJA_WYBRANA] = 1 and
		  wersZobowKons.[WZKO_CBS_ESLO_STAW_ID] = 18 and wersZobowKons.[WZKO_SKRE_ID] = 36013

/* Suma rat PLN dla zobowi¹zañ niekonsolidowanych */
select
	sum(zobowKons.[ZKON_RATA_PLN])
	from [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_WERSJE_ZOBOWIAZAN_KONS] as wersZobowKons
	inner join [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_ZOBOWIAZANIA_KONS] as zobowKons on wersZobowKons.[WZKO_ID] = zobowKons.[ZKON_WZKO_ID]
	where (zobowKons.[ZKON_CZY_KONSOLIDACJA_WYBRANA] = 0 /*OR zobowKons.[ZKON_CZY_KONSOLIDACJA_WYBRANA] is null*/) and
		  (zobowKons.[ZKON_CZY_POMINIETE] = 0 or zobowKons.[ZKON_CZY_POMINIETE] is null) and
		  wersZobowKons.[WZKO_CBS_ESLO_STAW_ID] = 18 and wersZobowKons.[WZKO_SKRE_ID] = 36013

/* Suma rat PLN dla zobowi¹zañ uwzglêdnionych w zdolnoœci */
select
	sum(zobowKons.[ZKON_RATA_PLN])
	from [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_WERSJE_ZOBOWIAZAN_KONS] as wersZobowKons
	inner join [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_ZOBOWIAZANIA_KONS] as zobowKons on wersZobowKons.[WZKO_ID] = zobowKons.[ZKON_WZKO_ID]
	where (zobowKons.[ZKON_CZY_POMINIETE] <> 1 or zobowKons.[ZKON_CZY_POMINIETE] is null) and 
		  ((zobowKons.[ZKON_CZY_KONSOLIDACJA_MOZLIWA] = 0 and zobowKons.[ZKON_CZY_KONSOLIDACJA_WYBRANA] = 0) or 
		  (zobowKons.[ZKON_CZY_KONSOLIDACJA_MOZLIWA] = 1 and zobowKons.[ZKON_CZY_KONSOLIDACJA_WYBRANA] is null) or
		  (zobowKons.[ZKON_CZY_KONSOLIDACJA_MOZLIWA] = 1 and zobowKons.[ZKON_CZY_KONSOLIDACJA_WYBRANA] = 0)) and
		  zobowKons.[ZKON_WPLYW_NA_ZDOLNOSC] = 1 and
		  wersZobowKons.[WZKO_CBS_ESLO_STAW_ID] = 18 and wersZobowKons.[WZKO_SKRE_ID] = 36013