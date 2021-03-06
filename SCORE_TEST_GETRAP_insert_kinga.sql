USE [DRA_TESTY]
GO

INSERT INTO [dbo].[GETRAP_test_xml_out]
           ([POST_CODE]
           ,[NR_BORROWERS]
           ,[FILES]
           ,[OPIS])
     VALUES
           ('11-111'
           ,2
           ,convert(xml,'<evaluated-model name="TEST_APP_GETRAP_1-TEST-024">
  <output-data name="T_1_BIK_NR_ZAPYT" value="null" />
  <output-data name="T_1_BIK_BLAD_KOD" value="RAP_P" />
  <output-data name="T_2_BIK_NR_ZAPYT" value="ND" />
  <output-data name="T_2_BIK_BLAD_KOD" value="ND" />
  <output-data name="FN_BIK_WYNIK" value="@LT@?xml version=@QUOT@1.0@QUOT@ encoding=@QUOT@UTF-8@QUOT@?@GT@&#xA;          
  @LT@Zobowiazania NumberOfSourceRep=@QUOT@1@QUOT@ BikRepRefNum_R1=@QUOT@017212985@QUOT@ RepQueryTime_R1=@QUOT@2017-01-13 godz. 13:08:29@QUOT@ NumberOfPositions_R1=@QUOT@0@QUOT@ RepPerson_R1=@QUOT@DOROTA FAΑA@QUOT@ RepPersonPesel_R1=@QUOT@95030633843@QUOT@ SRV_R1=@QUOT@VN@QUOT@ T_1_OWB=@QUOT@0@QUOT@ BikRepRefNum_R2=@QUOT@@QUOT@ RepQueryTime_R2=@QUOT@@QUOT@ NumberOfPositions_R2=@QUOT@@QUOT@ RepPerson_R2=@QUOT@@QUOT@ RepPersonPesel_R2=@QUOT@@QUOT@ SRV_R2=@QUOT@@QUOT@ T_2_OWB=@QUOT@0@QUOT@@GT@&#xA;      
  @LT@Zobowiazanie LP=@QUOT@1006@QUOT@ TYP_ZOB=@QUOT@Kredyt mieszkaniowy@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@115@QUOT@ KWOTA_LIMIT_PLN=@QUOT@245@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@350@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@470@QUOT@ RATA_W_WALUCIE=@QUOT@20@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@20@QUOT@ RATA_PLN=@QUOT@10@QUOT@ DATA_OTW=@QUOT@2012-11-22@QUOT@ HIST_PLAT=@QUOT@0@QUOT@ DATA_AKT=@QUOT@2013-04-22@QUOT@ NAZ_JED_SUB=@QUOT@*EMPTY*@QUOT@ NRB=@QUOT@54156011088567369108755835@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@28598@QUOT@ NR_TRANS_BIK=@QUOT@BIK19750000040029625481245160@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@PSN@QUOT@ /@GT@&#xA;   
  @LT@Zobowiazanie LP=@QUOT@1001@QUOT@ TYP_ZOB=@QUOT@Kredyt pracowniczy@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@170@QUOT@ KWOTA_LIMIT_PLN=@QUOT@260@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@410@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@530@QUOT@ RATA_W_WALUCIE=@QUOT@70@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@70@QUOT@ RATA_PLN=@QUOT@40@QUOT@ DATA_OTW=@QUOT@2010-08-05@QUOT@ HIST_PLAT=@QUOT@@QUOT@ DATA_AKT=@QUOT@2013-07-31@QUOT@ NAZ_JED_SUB=@QUOT@GETIN NOBLE BANK@QUOT@ NRB=@QUOT@50156011668193841750945791@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK35750000041842541497245001@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@PSN@QUOT@ /@GT@&#xA;
  @LT@Zobowiazanie LP=@QUOT@1006@QUOT@ TYP_ZOB=@QUOT@Kredyt mieszkaniowy@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@105@QUOT@ KWOTA_LIMIT_PLN=@QUOT@222@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@350@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@460@QUOT@ RATA_W_WALUCIE=@QUOT@30@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@30@QUOT@ RATA_PLN=@QUOT@10@QUOT@ DATA_OTW=@QUOT@2012-11-22@QUOT@ HIST_PLAT=@QUOT@00000@QUOT@ DATA_AKT=@QUOT@2013-04-22@QUOT@ NAZ_JED_SUB=@QUOT@*EMPTY*@QUOT@ NRB=@QUOT@54156011088567369108755835@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@28598@QUOT@ NR_TRANS_BIK=@QUOT@BIK19750000040029625481245160@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@BIK@QUOT@ /@GT@&#xA;   
  @LT@Zobowiazanie LP=@QUOT@1001@QUOT@ TYP_ZOB=@QUOT@Kredyt pracowniczy@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@160@QUOT@ KWOTA_LIMIT_PLN=@QUOT@280@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@410@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@520@QUOT@ RATA_W_WALUCIE=@QUOT@80@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@80@QUOT@ RATA_PLN=@QUOT@40@QUOT@ DATA_OTW=@QUOT@2010-08-05@QUOT@ HIST_PLAT=@QUOT@000@QUOT@ DATA_AKT=@QUOT@2013-07-31@QUOT@ NAZ_JED_SUB=@QUOT@GETIN NOBLE BANK@QUOT@ NRB=@QUOT@50156011668193841750945791@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK35750000041842541497245001@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@BIK@QUOT@ /@GT@&#xA;
  @LT@Zobowiazanie LP=@QUOT@1001@QUOT@ TYP_ZOB=@QUOT@Kredyt pracowniczy@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@160@QUOT@ KWOTA_LIMIT_PLN=@QUOT@280@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@410@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@520@QUOT@ RATA_W_WALUCIE=@QUOT@80@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@80@QUOT@ RATA_PLN=@QUOT@40@QUOT@ DATA_OTW=@QUOT@2010-08-05@QUOT@ HIST_PLAT=@QUOT@000@QUOT@ DATA_AKT=@QUOT@2013-07-31@QUOT@ NAZ_JED_SUB=@QUOT@GETIN NOBLE BANK@QUOT@ NRB=@QUOT@36249010155057186357098272@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK35750000041842541497245001@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@PSN@QUOT@ /@GT@&#xA;
  @LT@Zobowiazanie LP=@QUOT@1001@QUOT@ TYP_ZOB=@QUOT@Kredyt pracowniczy@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@160@QUOT@ KWOTA_LIMIT_PLN=@QUOT@280@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@410@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@520@QUOT@ RATA_W_WALUCIE=@QUOT@80@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@80@QUOT@ RATA_PLN=@QUOT@40@QUOT@ DATA_OTW=@QUOT@2010-08-05@QUOT@ HIST_PLAT=@QUOT@000@QUOT@ DATA_AKT=@QUOT@2013-07-31@QUOT@ NAZ_JED_SUB=@QUOT@GETIN NOBLE BANK@QUOT@ NRB=@QUOT@85124045467357431269597410@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK35750000041842541497245001@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@PSN@QUOT@ /@GT@&#xA;
     @LT@/Zobowiazania@GT@" />
</evaluated-model>')
           ,'liczba rat')
GO


