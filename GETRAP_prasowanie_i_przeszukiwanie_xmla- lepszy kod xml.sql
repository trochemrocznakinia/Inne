SELECT TOP 20 [ID]
      ,[POST_CODE]
      ,[NR_BORROWERS]
	  ,[OPIS]
	  ,[FILES]
	  ,cast
	       (replace(
	                replace(
			                replace(
	                                replace(
			                                cast(FILES.value('(evaluated-model/output-data[@name="FN_BIK_WYNIK"]/@value)[1]', 'varchar(max)') as varchar(max)),'@LT@','<'
			                               ),'@GT@','>'
			                       ),'@QUOT@','"'
			               ),'<?xml version="1.0" encoding="UTF-8"?>',''			       
				   ) as xml
		   ) as [Wynik]
  FROM [DRA_TESTY].[dbo].[GETRAP_test_xml_out]
  where [POST_CODE] = '47-440' 
		--and FILES.value('(evaluated-model/output-data[@name="FN_BIK_WYNIK"]/@value)[1]', 'varchar(max)') like '%Złoty polski%'

  --update [DRA_TESTY].[dbo].[GETRAP_test_xml_out]
  --set [POST_CODE] = '47-440'
  --where [ID] = 353

