use CBWG
SELECT top 100                                        skre.SKRE_ID,
                                                      skre.SKRE_NUMER_WNIOSKU,                                                         
                                                      (SELECT ESLO_NAZWA           
                                  FROM CBS.SCH_SLOWNIKI.T_ELEMENTY_SLOWNIKOW
                                  where ESLO_ID = hist.HSKR_CBS_ESLO_FSSKRE_ID) as etap,
                                                      (SELECT ESLO_NAZWA           
                                  FROM CBS.SCH_SLOWNIKI.T_ELEMENTY_SLOWNIKOW
                                  where ESLO_ID = USKR_CBS_ESLO_FTRUCZ_ID) as rodzaj_uczestnika,
                                                      doso.DOSO_IMIE_CZ1 ++ ' ' ++ ISNULL(doso.DOSO_IMIE_CZ2,'') as IMIE,
                                 doso.DOSO_NAZWISKO_CZ2 AS NAZWISKO,
                                 doso.DOSO_PESEL as PESEL,
                                 waut.DATA_UTWORZENIA,
                                 waut.WAUT_DANE_WYNIKOWE,
                                 WAUT_CBS_ESLO_RWER_ID,
								 WAUT_WDUC_ID,
								 WAUT_ID,
                                 (SELECT ESLO_NAZWA           
                                  FROM CBS.SCH_SLOWNIKI.T_ELEMENTY_SLOWNIKOW
                                  where ESLO_ID = WAUT_CBS_ESLO_RWER_ID) as rodzaj_weryfikacji,
                                  waut.WAUT_CZY_WERYFIKACJA_TEL_ZATRUDNIENIA, 
                                                       waut.WAUT_CZY_WERYFIKACJA_TEL_ZAMIESZKANIA, waut.WAUT_CZY_WERYFIKACJA_TEREN_ZATRUDNIENIA, 
                                                      waut.WAUT_CZY_WERYFIKACJA_TEREN_ZAMIESZKANIA, 
                                                       --waut.WAUT_CBS_ESLO_RWER_ID, 
                                                      --waut.WAUT_CBS_ESLO_WWER_ID, 
                                                      waut.WAUT_REZULTAT_WERYFIKACJI 
                                                       --, uskr.USKR_SKRE_ID
                                                      /*,dla_kogo = CASE 
                                                                                 WHEN       (hist.HSKR_CBS_ESLO_FSSKRE_ID in (4355,4356) and USKR_CBS_ESLO_FTRUCZ_ID in (2926,4344,4345)) or (hist.HSKR_CBS_ESLO_FSSKRE_ID in () and USKR_CBS_ESLO_FTRUCZ_ID in ()) THEN 'OK'
                                                                                 ELSE 'NOK'
                                                                                 END*/--w wolnym czasie dorobic rodzaje vs uczestnik vs etap      

FROM         SCH_SPRAWY_KREDYTOWE.T_UCZESTNICY_SPRAW_KREDYTOWYCH uskr INNER JOIN
                      SCH_KLIENCI.T_WERSJE_DANYCH_UCZESTNIKOW wduc ON 
                      uskr.USKR_ID = wduc.WDUC_USKR_ID
                       INNER JOIN
                      SCH_ZADANIA.T_WERYFIKACJE_AUTOMATYCZNE waut ON 
                      wduc.WDUC_ID = waut.WAUT_WDUC_ID INNER JOIN
                      SCH_KLIENCI.T_DANE_OSOBOWE doso ON 
                      wduc.WDUC_DOSO_ID = doso.DOSO_ID  INNER JOIN
                      SCH_SPRAWY_KREDYTOWE.T_SPRAWY_KREDYTOWE AS skre ON uskr.USKR_SKRE_ID = skre.SKRE_ID  LEFT JOIN
                      SCH_SPRAWY_KREDYTOWE.T_HISTORIE_SPRAW hist ON
                      hist.HSKR_SKRE_ID = uskr.USKR_SKRE_ID and waut.DATA_UTWORZENIA > hist.HSKR_DATA_WEJSCIA and waut.DATA_UTWORZENIA < ISNULL(hist.HSKR_DATA_WYJSCIA,GETDATE())
where uskr.USKR_SKRE_ID in (7125) 
  and wduc.WDUC_CBS_ESLO_STAW_ID = 18
--and USKR_CBS_ESLO_FTRUCZ_ID = 4345 
--and WAUT_CBS_ESLO_RWER_ID = 868
--doso.DOSO_PESEL = '73082315467'
--skre.SKRE_NUMER_WNIOSKU = 'F/2013/5606'
 --and CAST(WAUT_DANE_WYNIKOWE as varchar(max)) like '%<DT_WYP_KRE>%'
order by uskr.uskr_skre_id, waut.DATA_UTWORZENIA asc
