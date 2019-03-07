USE CBWG
GO

declare
@skre_id int = 2292978 --nr cid wniosku

SELECT 

       doso.DOSO_IMIE_CZ1, 
       doso.DOSO_NAZWISKO_CZ2, 
       waut.waut_id, 
       eslo.eslo_kod, 
          skre.skre_id,
       WAUT.WAUT_REZULTAT_WERYFIKACJI, 
       WAUT.WAUT_DANE_WYNIKOWE 

       from SCH_ZADANIA.T_WERYFIKACJE_AUTOMATYCZNE WAUT
             join SCH_KLIENCI.T_WERSJE_DANYCH_UCZESTNIKOW WDUC on WAUT.WAUT_WDUC_ID = WDUC.WDUC_ID
             join sch_sprawy_kredytowe.T_UCZESTNICY_SPRAW_KREDYTOWYCH USKR on wduc.wduc_uskr_id = uskr.uskr_id
                    join [SCH_SPRAWY_KREDYTOWE].[T_SPRAWY_KREDYTOWE] as skre on uskr.USKR_SKRE_ID = skre.SKRE_ID
             join cbs.sch_slowniki.t_elementy_slownikow eslo on waut.WAUT_CBS_ESLO_RWER_ID = eslo.ESLO_ID
             JOIN SCH_KLIENCI.T_DANE_OSOBOWE doso ON WDUC.WDUC_DOSO_ID = doso.DOSO_ID 
       where
             eslo.eslo_kod = 'AML' and skre.skre_id = @skre_id
			 /*and
             uskr.uskr_skre_id = @skre_id*/
                    --CAST(waut.[WAUT_DANE_WYNIKOWE] as varchar(max)) like '%<score>99%' and skre.[SKRE_CZY_PREAPPROVED]=1 --98%,99% znajduje. Nie wyszukuj ze znacznikiem zamykaj¹cym
       ORDER BY 1 desc;
