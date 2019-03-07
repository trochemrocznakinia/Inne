use cbp
SELECT    podm.PODM_ID, 
podm.PODM_KOD, 
podm.PODM_NAZWA_SKROCONA,
podm.PODM_NAZWA_PELNA, 
tapo.TAPO_KOD,
tapo.TAPO_NAZWA,
apod.APOD_WARTOSC_N,
apod.APOD_WARTOSC_Z,
apod.APOD_WARTOSC_L,
apod.APOD_WARTOSC_D
                      
FROM SCH_PODMIOTY.T_PODMIOTY AS podm 
INNER JOIN SCH_PODMIOTY.T_ATRYBUTY_PODMIOTOW AS apod ON podm.PODM_ID = apod.APOD_PODM_ID 
INNER JOIN SCH_PODMIOTY.T_TYPY_ATRYBUTOW_PODMIOTOW AS tapo ON apod.APOD_TAPO_ID = tapo.TAPO_ID
where PODM_KOD in ('43005')
and apod.APOD_CBS_ESLO_STAT_ID = 78

order by podm.PODM_KOD, tapo.TAPO_NAZWA