/****** Script for SelectTopNRows command from SSMS  ******/
declare @kod_oferty varchar(max) = 'GPREAP01'
declare @kod_ubezpieczenia varchar(max) = '18011'
SELECT TOP 1000 
          o.[OFER_ID]
      --,o.[OFER_CBS_ESLO_STAT_ID]
      ,o.[OFER_KOD]
      ,o.[OFER_NAZWA]
         ,og.[OFGR_GRUP_ID]
      --,g.[GRUP_KOREKTA_OPROC]
      ,g.[GRUP_KOD]
         ,ug.[UBGR_UBEZ_ID]
         ,ug.[UBGR_CZY_GLOWNE]
         ,u.[UBEZ_KOD]
      ,u.[UBEZ_SYMBOL]
      ,u.[UBEZ_NAZWA]
         --,operg.[OPER_CBP_OPERATOR_PODM_ID]
         --,p.[PODM_KOD]
      ,p.[PODM_NAZWA_SKROCONA]
  from [CBO].[SCH_OFERTY].[T_OFERTY] o
  inner join [CBU].[SCH_UBEZP].[T_GNB_OFERTY_GRUP] og on og.[OFGR_CBO_OFER_ID] = o.[OFER_ID]
  inner join [CBU].[SCH_UBEZP].[T_GNB_GRUPY] g on g.[GRUP_ID] = og.[OFGR_GRUP_ID]
  inner join [CBU].[SCH_UBEZP].[T_GNB_UBEZPIECZENIA_GRUP] ug on ug.[UBGR_GRUP_ID] = og.[OFGR_GRUP_ID]
  inner join [CBU].[SCH_UBEZP].[T_UBEZPIECZENIA] u on u.[UBEZ_ID] = ug.[UBGR_UBEZ_ID]
  inner join [CBU].[SCH_UBEZP].[T_GNB_OPERATORZY_GRUP] operg on operg.[OPER_GRUP_ID] = g.[GRUP_ID]
  inner join [CBP].[SCH_PODMIOTY].[T_PODMIOTY] p on p.[PODM_ID] = operg.[OPER_CBP_OPERATOR_PODM_ID]
  where 
                           o.[OFER_CBS_ESLO_STAT_ID] = 78
                    and (g.[GRUP_CBS_ESLO_STAW_ID]= 18 /*and (g.[GRUP_DATA_OD] < getdate() and g.[GRUP_DATA_DO] > getdate())*/)
                    --and u.[UBEZ_KOD] = @kod_ubezpieczenia
                    --and o.[OFER_KOD] = @kod_oferty
                    and og.[OFGR_GRUP_ID] = 621
