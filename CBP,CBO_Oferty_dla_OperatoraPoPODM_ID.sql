
SELECT TOP 1000
          --podm.[PODM_ID]
          --podm.[PODM_KOD]
       podm.[PODM_NAZWA_SKROCONA]
	         ,ofer.[OFER_NAZWA]
	  ,ofer.OFER_KOD
	  ,podm.PODM_KOD
         --,(select stat.[ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] stat where ([PODM_CBS_ESLO_STAT_ID] = stat.[ESLO_ID])) [PODM_STAT]
         --,ckre.[ESLO_NAZWA] as [CEL_KREDYTU] 
         --,statRolaPodmDoCeluKred.[ESLO_NAZWA] as [RPCK_STAT]
         --,typRoliPodmiotu.[ESLO_NAZWA] as [TRPO]
         --,statOfer.[ESLO_NAZWA] as [OFER_STAT]
      ,ofer.[OFER_KOD]
      --,ofer.[OFER_NAZWA]
         --,tofe.[ESLO_NAZWA] as [TOFE_NAZWA]
         ,tofe.[ESLO_KOD] as [TOFE_KOD]
         --,rwof.[RWOF_CBS_ESLO_RWER_ID]
         --,rwer.[ESLO_NAZWA] as [RWER_NAZWA]
  FROM [CBP].[SCH_PODMIOTY].[T_PODMIOTY] podm
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] statPodm on statPodm.[ESLO_ID] = podm.[PODM_CBS_ESLO_STAT_ID]
  inner join [CBP].[SCH_PODMIOTY].[T_PODMIOTY_CELE_KREDYTOWE] pckr on pckr.[PCKR_PODM_ID] = podm.[PODM_ID]
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] ckre on ckre.[ESLO_ID] = pckr.[PCKR_CBS_ESLO_CKRE_ID]
  inner join [CBP].[SCH_PODMIOTY].[T_ROLE_PODMIOTOW_CELE_KREDYTOWE] rpck on rpck.[RPCK_PCKR_ID] = pckr.[PCKR_ID]
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] statRolaPodmDoCeluKred on statRolaPodmDoCeluKred.[ESLO_ID] = rpck.[RPCK_CBS_ESLO_STAT_ID]
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] typRoliPodmiotu on typRoliPodmiotu.[ESLO_ID] = rpck.[RPCK_CBS_ESLO_TRPO_ID]
  inner join [CBP].[SCH_PODMIOTY].[T_OFERTY_DLA_PODMIOTOW] ofertyDlaPodm on ofertyDlaPodm.[ODPD_PCKR_ID] = rpck.[RPCK_PCKR_ID]
  inner join [CBO].[SCH_OFERTY].[T_OFERTY] ofer on ofer.[OFER_ID] = ofertyDlaPodm.[ODPD_CBO_OFER_ID]
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] statOfer on statOfer.[ESLO_ID] = ofer.[OFER_CBS_ESLO_STAT_ID]
  inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] tofe on tofe.[ESLO_ID] = ofer.[OFER_CBS_ESLO_TOFE_ID]
  --inner join [CBO].[SCH_OFERTY].[T_WERSJE_OFERT] wofe on wofe.[WOFE_OFER_ID] = ofer.[OFER_ID]
  --inner join [CBO].[SCH_OFERTY].[T_RODZAJE_WERYFIKACJI_OFERT] rwof on rwof.[RWOF_WOFE_ID] = wofe.[WOFE_ID]
  --inner join [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] rwer on rwer.[ESLO_ID] = rwof.[RWOF_CBS_ESLO_RWER_ID]
  where  statPodm.[ESLO_NAZWA] = 'aktywny'
                    and statRolaPodmDoCeluKred.[ESLO_NAZWA] = 'aktywny'
                    and typRoliPodmiotu.[ESLO_NAZWA] = 'Operator'
                    and statOfer.[ESLO_NAZWA] = 'aktywny'
					and ofer.OFER_KOD='CVSINF01'

                    --and (wofe.[WOFE_CBS_ESLO_STAW_ID] = 18 and ([WOFE_DATA_OD] <= getdate() and getdate() < [WOFE_DATA_DO]))
                    --and rwer.[ESLO_NAZWA] = 'Baza mailingowa'
             
  order by tofe.[ESLO_NAZWA] asc
