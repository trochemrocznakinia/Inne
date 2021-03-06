declare @operatorKod varchar(max) = '5454'

select 
	   podm.[PODM_ID]
      ,podm.[PODM_KOD]
      ,podm.[PODM_NAZWA_SKROCONA] [PODM_NAZWA]
      ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PODM_CBS_ESLO_TPOD_ID]) [TPOD_NAZWA]
      ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PODM_CBS_ESLO_SPRA_ID]) [SPRA_NAZWA]
      ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PODM_CBS_ESLO_SPOD_ID]) [SPOD_NAZWA]
  from [CBP].[SCH_PODMIOTY].[T_PODMIOTY] podm
  inner join [CBP].[SCH_PODMIOTY].[T_PODMIOTY_CELE_KREDYTOWE] pckr on podm.[PODM_ID] = pckr.[PCKR_PODM_ID]
  inner join [CBP].[SCH_PODMIOTY].[T_ROLE_PODMIOTOW_CELE_KREDYTOWE] rpck on pckr.[PCKR_ID] = rpck.[RPCK_PCKR_ID]
  where 
			pckr.[PCKR_CBS_ESLO_CKRE_ID] = (select [ESLO_ID] 
											from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] 
											where [ESLO_NAZWA] = 'Kredyt konsumpcyjny (F)')
		and rpck.[RPCK_CBS_ESLO_TRPO_ID] = (select [ESLO_ID] 
											from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] 
											where [ESLO_NAZWA] = 'Operator')
  order by podm.[PODM_KOD] desc


select 
	   podm.[PODM_ID]
      ,podm.[PODM_KOD]
      ,podm.[PODM_NAZWA_SKROCONA] [PODM_NAZWA]
      ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PODM_CBS_ESLO_TPOD_ID]) [TPOD_NAZWA]
      ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PODM_CBS_ESLO_SPRA_ID]) [SPRA_NAZWA]
      ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PODM_CBS_ESLO_SPOD_ID]) [SPOD_NAZWA]
      --,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PODM_CBS_ESLO_RPOD_ID]) [RPOD_KOD]
      --,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PODM_CBS_ESLO_STAT_ID]) [STAT_KOD]
	  ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = [PCKR_CBS_ESLO_CKRE_ID]) [CKRE_NAZWA]
	  ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = rpck.[RPCK_CBS_ESLO_STAT_ID]) [RPCK_STAT_NAZWA]
      ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = rpck.[RPCK_CBS_ESLO_TRPO_ID]) [RPCK_TRPO_NAZWA]
	  ,(select [OFER_KOD] from [CBO].[SCH_OFERTY].[T_OFERTY] ofer where odpd.[ODPD_CBO_OFER_ID] = ofer.[OFER_ID]) [OFER_KOD]
	  ,(select [OFER_NAZWA] from [CBO].[SCH_OFERTY].[T_OFERTY] ofer where odpd.[ODPD_CBO_OFER_ID] = ofer.[OFER_ID]) [OFER_NAZWA]
	  ,(select [ESLO_NAZWA] from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] where [ESLO_ID] = odpd.[ODPD_CBS_ESLO_TAOP_ID]) [ODPD_TAOP]
  
  from [CBP].[SCH_PODMIOTY].[T_PODMIOTY] podm
  inner join [CBP].[SCH_PODMIOTY].[T_PODMIOTY_CELE_KREDYTOWE] pckr on podm.[PODM_ID] = pckr.[PCKR_PODM_ID]
  inner join [CBP].[SCH_PODMIOTY].[T_ROLE_PODMIOTOW_CELE_KREDYTOWE] rpck on pckr.[PCKR_ID] = rpck.[RPCK_PCKR_ID]
  INNER JOIN [CBP].[SCH_PODMIOTY].[T_OFERTY_DLA_PODMIOTOW] odpd on pckr.[PCKR_ID] = odpd.[ODPD_PCKR_ID]
  where 
		podm.[PODM_KOD] = @operatorKod
		and	pckr.[PCKR_CBS_ESLO_CKRE_ID] = (select [ESLO_ID] 
												from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] 
												where [ESLO_NAZWA] = 'Kredyt konsumpcyjny (F)')
		and rpck.[RPCK_CBS_ESLO_TRPO_ID] = (select [ESLO_ID] 
											from [CBS].[SCH_SLOWNIKI].[T_ELEMENTY_SLOWNIKOW] 
											where [ESLO_NAZWA] = 'Operator')
		--and odpd.[ODPD_CBO_OFER_ID] = (select [OFER_ID]
									   --from [CBO].[SCH_OFERTY].[T_OFERTY] 
									  -- where [OFER_KOD] = 'GPREAP01')
