SELECT TOP 1000 omai.[OMAI_ID]
      ,omai.[OMAI_NR_LISTU]
      ,omai.[OMAI_CBO_WYBRANA_OFER_ID]
      ,omai.[OMAI_DATA_WAZNOSCI_OD]
      ,omai.[OMAI_DATA_WAZNOSCI_DO]
      ,omai.[OMAI_DATA_WYKORZYSTANIA]
      ,omai.[OMAI_CZY_WYKORZYSTANE]
      ,omai.[OMAI_CZY_OFERTA_STANDARD]
      ,omai.[OMAI_NRB_KR_POPRZ]
      ,omai.[OMAI_DOCHODY_KR_POPRZ]
      ,omai.[OMAI_MAX_KWOTA]
      ,omai.[OMAI_MAX_OKRES]
      ,omai.[OMAI_DATA_AKTUALIZACJI]
      ,omai.[OMAI_RODZAJ_MAIL]
      ,omai.[OMAI_KOMUNIKAT_DLA_DORADCY]
      ,omai.[OMAI_CBWG_SKRE_ID]
      ,omai.[OMAI_MAX_KWOTA_OSWIADCZENIE]
      ,omai.[OMAI_TYP_KLIENTA]
      ,omai.[OMAI_MAX_RATA]
      ,omai.[OMAI_IMIE]
      ,omai.[OMAI_NAZWISKO]
      ,omai.[OMAI_PESEL]
      ,omai.[OMAI_MAX_RATA_60M]
      ,omai.[OMAI_MAX_KWOTA_60M]
      ,omai.[OMAI_MAX_KWOTA_OSWIADCZENIE_60M]
      ,omai.[OMAI_MAX_KWOTA_BEZ_WSPOLMALZONKA]
      ,omai.[OMAI_WYDATKI_NA_MIESZKANIE]
      ,omai.[OMAI_CBS_ESLO_FLDZIE_ID]
      ,omai.[OMAI_CBS_ESLO_FZEDOC_ID]
	  ,ofer.[OFER_ID]
      ,ofer.[OFER_CBS_ESLO_TOFE_ID]
	  ,eslo.[ESLO_NAZWA]
	  ,eslo.[ESLO_KOD]
	  ,ofer.[OFER_KOD]
      ,ofer.[OFER_NAZWA]
  from [CBM_FINO].[SCH_MAILING].[T_OFERTY_MAILINGOWE] as omai
  inner join [CBM_FINO].[SCH_MAILING].[T_OFERTY_MAILINGOWE_OFERTY] as omaio on omai.[OMAI_ID] = omaio.[OMAO_OMAI_ID]
  inner join [CBO].[SCH_OFERTY].[T_OFERTY] as ofer on omaio.[OMAO_CBO_OFER_ID] = ofer.[OFER_ID]
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] as eslo on ofer.[OFER_CBS_ESLO_TOFE_ID] = eslo.[ESLO_ID]
  where (ofer.[OFER_KOD] = 'GPREAP01')
  and (omai.[OMAI_DATA_WAZNOSCI_OD] <= getdate() and getdate() <= omai.[OMAI_DATA_WAZNOSCI_DO])
  and omai.[OMAI_CZY_WYKORZYSTANE] <> 1
  and omai.OMAI_CZY_PROCES_KLIK=0
  --and omai.OMAI_RODZAJ_MAIL=1276

  --eslo.[ESLO_KOD] = 'TOKGO'
  --and omai.[OMAI_CBS_ESLO_FZEDOC_ID] = 6203
  --and (omai.[OMAI_NR_LISTU] = '10000013' or omai.[OMAI_NR_LISTU] = '10000022')
  --omai.[OMAI_PESEL] =
  ORDER BY omai.[OMAI_ID] desc
  
  --update [CBM_FINO].[SCH_MAILING].[T_OFERTY_MAILINGOWE]
  --set [OMAI_MAX_RATA_60M] = 500.00000
  --where [OMAI_ID] = 10815701

  --update [CBM_FINO].[SCH_MAILING].[T_OFERTY_MAILINGOWE]
  --set [OMAI_DATA_WAZNOSCI_DO] = '2018-12-31 00:00:00.000'
  --set [OMAI_RODZAJ_MAIL] = 14
  --set [OMAI_CBS_ESLO_FZEDOC_ID] = 6121
  --set [OMAI_IMIE] = 'Stanislaw', [OMAI_NAZWISKO] = 'Stawicki'
  --where [OMAI_ID] = 1451815 or [OMAI_ID] = 1451814