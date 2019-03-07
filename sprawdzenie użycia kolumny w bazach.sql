DECLARE @COLUMNNAME varchar(20) = 'SKRE_CZY_OFER_ONLINE'

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

SELECT 'CBF' as BAZA,  obj.Name COLLATE DATABASE_DEFAULT SPName, sc.TEXT COLLATE DATABASE_DEFAULT  SPText 
FROM CBF.sys.syscomments sc
INNER JOIN CBF.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'BBP' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM BBP.sys.syscomments sc
INNER JOIN BBP.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBM_FINO' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBM_FINO.sys.syscomments sc
INNER JOIN CBM_FINO.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBM_GETIN' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBM_GETIN.sys.syscomments sc
INNER JOIN CBM_GETIN.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBO' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBO.sys.syscomments sc
INNER JOIN CBO.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBS' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBS.sys.syscomments sc
INNER JOIN CBS.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBU' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBU.sys.syscomments sc
INNER JOIN CBU.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBUZYTKOWNIKOW' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBUZYTKOWNIKOW.sys.syscomments sc
INNER JOIN CBUZYTKOWNIKOW.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBW' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBW.sys.syscomments sc
INNER JOIN CBW.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBWG' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBWG.sys.syscomments sc
INNER JOIN CBWG.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBWG_ARCH' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBWG_ARCH.sys.syscomments sc
INNER JOIN CBWG_ARCH.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBWG_PLIKI' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBWG_PLIKI.sys.syscomments sc
INNER JOIN CBWG_PLIKI.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'CBWG_SKANY' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM CBWG_SKANY.sys.syscomments sc
INNER JOIN CBWG_SKANY.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'DRA_GOT' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM DRA_GOT.sys.syscomments sc
INNER JOIN DRA_GOT.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'DRA_TESTY' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM DRA_TESTY.sys.syscomments sc
INNER JOIN DRA_TESTY.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'HD' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM HD.sys.syscomments sc
INNER JOIN HD.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'HD_PAST_TENSE' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM HD_PAST_TENSE.sys.syscomments sc
INNER JOIN HD_PAST_TENSE.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'ICWF' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM ICWF.sys.syscomments sc
INNER JOIN ICWF.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'ICWFTracking' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM ICWFTracking.sys.syscomments sc
INNER JOIN ICWFTracking.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'Kredyt_Eksport_FINO' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM Kredyt_Eksport_FINO.sys.syscomments sc
INNER JOIN Kredyt_Eksport_FINO.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'Kredyt_Eksport_FINO_Arch' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM Kredyt_Eksport_FINO_Arch.sys.syscomments sc
INNER JOIN Kredyt_Eksport_FINO_Arch.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
UNION
SELECT 'WS_Cache' as BAZA,  obj.Name SPName, sc.TEXT SPText
FROM WS_Cache.sys.syscomments sc
INNER JOIN WS_Cache.sys.objects obj ON sc.Id = obj.OBJECT_ID
WHERE sc.TEXT LIKE '%' + @COLUMNNAME + '%'
GO
