/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ID_WERSJI]
      ,[ABCDEFGH]
      ,[ODD]
      ,[IS_DELETED]
      ,[NR_KLIENTA]
	  ,[NR_UMOWY]
	  ,substring(convert(varchar(max), cmowy.nr_umowy), 1, 7) as NR_UMOWY_KONW
      --,CAST (NR_UMOWY as numeric(15)) as konwersjaCast
      ,[ROK]
      ,[STATPR]
      ,[NR_KOLEJNY]
      ,[DATA_UM]
      ,[DATA_AN]
      ,[NR_ANEKSU]
      ,[INSPEKTOR]
      ,[TECZKA]
      ,[STATUS]
      ,[KWOTA]
      ,[OKRES]
      ,[UPO1]
      ,[UPO2]
      ,[UPO3]
      ,[UPO4]
      ,[BAN1]
      ,[BAN2]
      ,[OD]
      ,[DO]
      ,[ROZAB]
      ,[DAMONI]
      ,[RYZYKO]
      ,[PROWIZJA]
      ,[W_STUM]
      ,[STOPA]
      ,[STOPA_1]
      ,[DATA_WYP]
      ,[DATA_WN]
      ,[ILOSC_RAT]
      ,[CEL]
      ,[ZMIANA_STP]
      ,[RESTRUKT]
      ,[DATA_TR1]
      ,[KWOTA_TR1]
      ,[DATA_TR2]
      ,[KWOTA_TR2]
      ,[DATA_TR3]
      ,[KWOTA_TR3]
      ,[DATA_TR4]
      ,[KWOTA_TR4]
      ,[DATA_TR5]
      ,[KWOTA_TR5]
      ,[WYP_TR5]
      ,[KLARYZ]
      ,[NACO]
      ,[ZMI_AN]
      ,[STAT_AN]
      ,[DATA_ARC]
      ,[DATA_CMP]
      ,[TARCH]
      ,[PRO_AN]
      ,[DATA_DYSP]
      ,[WARTOW]
      ,[PROC30]
      ,[UBEZP]
      ,[NR_UBEZP]
      ,[RACH_B]
      ,[RACH_WY]
      ,[NR_REGULAM]
      ,[WAR_HARM]
      ,[NR_HARM]
      ,[NR_WYD]
      ,[STOPA_ODS]
      ,[KAR_ODS]
      ,[WALUTA]
      ,[KONTO_ODS]
      ,[W_STPRZ]
      ,[ST_PRZET]
      ,[KWOTA_1]
      ,[OD_UMO]
      ,[DO_UMO]
      ,[WH_UMO]
      ,[LCKD]
      ,[PRO_ZAPL]
      ,[PRO_DLR]
      ,[PRO_BNK]
      ,[PRO_SPE]
      ,[STAT_COP]
      ,[NR_DLR]
      ,[WAR_AN]
      ,[DNI_1RATY]
      ,[PROW_REKOM]
      ,[WIBOR]
      ,[MARZA]
      ,[OBS]
      ,[FILIA]
      ,[FILIA_KS]
      ,[GRUPA_STP]
      ,[DOP_KWOTA]
      ,[DOP_STOPA]
      ,[NAZ10]
      ,[PRZEWAL]
      ,[KONSUMEN]
      ,[OP_POSRED]
      ,[OP_PRZYGO]
      ,[OP_RESZTA]
      ,[OP_MINIM]
      ,[DOP_WSK]
      ,[DOP_PROW]
      ,[WYPDOD]
      ,[D_PRZEWA]
      ,[PSS_NIP]
      ,[NRB]
      ,[PROW_KRED]
      ,[ROZ_STOPA]
      ,[OSWIAD]
      ,[SKL_TU]
      ,[SKL_PRZED]
      ,[SKL_BANK]
      ,[DTKUBEZ]
      ,[KOD_UBEZP]
      ,[KWOWYP1]
      ,[KWOWYP2]
      ,[SUMWYP1]
      ,[SUMWYP2]
      ,[RACH_KEP]
      ,[KWO_KEP]
      ,[NR_KARTY]
      ,[NR_POS]
      ,[ZW_PR_PO]
      ,[CZY_LICH]
      ,[STOPA_OS]
      ,[ODS_AGEN]
      ,[NRB_POWIAZANE]
      ,[CYKL]
      ,[WYCIAG]
      ,[SPLATA]
  FROM [Kredyt_Eksport_FINO].[SCH_DANE_EKSPORT].[CMOWY] cmowy
JOIN [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_UMOWY] umow ON substring(convert(varchar(max), cmowy.nr_umowy), 1, 7) = umow.umow_numer
JOIN [CBWG].[SCH_SPRAWY_KREDYTOWE].[T_SPRAWY_KREDYTOWE] skre on umow.umow_skre_id = skre.skre_id
where skre.skre_id='2234811'