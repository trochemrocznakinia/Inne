/****** Script for SelectTopNRows command from SSMS  ******/
select podm.[PODM_ID]
      ,podm.[PODM_NAZWA]
         ,podm.[PODM_NIP]
         ,t1.[TATR_KOD]
      ,a1.[ATRY_WARTOSC_L]
         ,t2.[TATR_KOD]
         ,t2.[TATR_KOD_LISTY]
      
         --,a2.[ATRY_WARTOSC_N]
         ,e2.[ESLO_KOD]
  from [BBP].[SCH_PRACODAWCY].[T_PODMIOTY] podm
  inner join [BBP].[SCH_PRACODAWCY].[T_ATRYBUTY] a1 on podm.[PODM_ID] = a1.[ATRY_PODM_ID]
  inner join [BBP].[SCH_PRACODAWCY].[T_ATRYBUTY] a2 on podm.[PODM_ID] = a2.[ATRY_PODM_ID]
  inner join [BBP].[SCH_PRACODAWCY].[T_TYPY_ATRYBUTOW] t1 on t1.[TATR_ID] = a1.[ATRY_TATR_ID]
  inner join [BBP].[SCH_PRACODAWCY].[T_TYPY_ATRYBUTOW] t2 on t2.[TATR_ID] = a2.[ATRY_TATR_ID]
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] e2 on e2.[ESLO_ID] = a2.[ATRY_WARTOSC_N] 
  where /*(
                  t1.[TATR_KOD] = 'TAFPN' 
         and a1.[ATRY_WARTOSC_L] = 1 
              and a1.[ATRY_CBS_ESLO_STAT_ID] = 78 
              and (a1.[ATRY_DATA_OD] < getdate() and getdate() < a1.[ATRY_DATA_DO])
             )                                                                                                          --regu³a f_bbp bbp_3
             and*/
             (
                  t2.TATR_KOD = 'TASPP'
             and a2.[ATRY_CBS_ESLO_STAT_ID] = 78 
              and (a2.[ATRY_DATA_OD] < getdate() and getdate() < a2.[ATRY_DATA_DO])
             /*and e2.[ESLO_KOD] not in (01, 02, 05, 06, 08, 09, 10, 13, 14, 15,
                                                         16, 17, 19, 20, 22, 23, 26, 28, 29, 33,
                                                         34, 35, 37, 38, 39, 40, 41, 42, 43, 44,
                                                         45, 46, 48, 49, 50, 53, 54, 55, 56, 57,
                                                         58, 59, 60, 61, 62, 63, 64)*/                                   --regu³a f_bbp bbp_3
             and e2.[ESLO_KOD] in ('06', '28', '40', '41', '43', '44', '45', '48', '49', '50',
                                                  '52', '51', '53', '54', '56', '57', '58', '59', '60', '61',
                                                  '63', '65')                                                            --regu³a f_bbp bbp_5 i bbp_5_1
             )
