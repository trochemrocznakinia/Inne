USE [DRA_TESTY]
GO
/*UPDATE [dbo].[GETRAP_test_xml_out]
SET [FILES]=cast('<Zobowiazania NumberOfSourceRep="1" BikRepRefNum_R1="017212985" RepQueryTime_R1="2017-01-13 godz. 13:08:29" NumberOfPositions_R1="0" RepPerson_R1="DOROTA FAΑA" RepPersonPesel_R1="95030633843" SRV_R1="VN" T_1_OWB="0" BikRepRefNum_R2="" RepQueryTime_R2="" NumberOfPositions_R2="" RepPerson_R2="" RepPersonPesel_R2="" SRV_R2="" T_2_OWB="0">
  <Zobowiazanie LP="1001" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="0" KWOTA_LIMIT_PLN="0" KWOTA_DO_SPLATY_W_WALUCIE="13332" KWOTA_DO_SPLATY_PLN="13332" RATA_W_WALUCIE="670.67" RATA_W_WALUCIE_ZDOLNOSC="670.67" RATA_PLN="670.67" DATA_OTW="2011-09-22" HIST_PLAT="00" DATA_AKT="2013-04-22" NAZ_JED_SUB="GETIN NOBLE BANK" NRB="04156010940000457701918824" SALDO_NAL_WYM3M_PLN="0" NR_TRANS_BIK="BIK26750000040029582746245161" LM_DKK="0" ZRODLO="BIK" />
  <Zobowiazanie LP="1002" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="8936" KWOTA_LIMIT_PLN="8936" KWOTA_DO_SPLATY_W_WALUCIE="4522" KWOTA_DO_SPLATY_PLN="4522" RATA_W_WALUCIE="285.95" RATA_W_WALUCIE_ZDOLNOSC="285.95" RATA_PLN="285.95" DATA_OTW="2012-10-22" HIST_PLAT="000" DATA_AKT="2013-04-22" NAZ_JED_SUB="GETIN NOBLE BANK" NRB="54156011088567369108755835" SALDO_NAL_WYM3M_PLN="0" NR_TRANS_BIK="BIK63750000040029622380245160" LM_DKK="1" ZRODLO="BIK" />
  <Zobowiazanie LP="1002" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="8936" KWOTA_LIMIT_PLN="8936" KWOTA_DO_SPLATY_W_WALUCIE="4522" KWOTA_DO_SPLATY_PLN="4522" RATA_W_WALUCIE="285.95" RATA_W_WALUCIE_ZDOLNOSC="285.95" RATA_PLN="285.95" DATA_OTW="2012-10-22" HIST_PLAT="0000" DATA_AKT="2013-04-22" NAZ_JED_SUB="GETIN NOBLE BANK" NRB="18156011667568045151166575" SALDO_NAL_WYM3M_PLN="0" NR_TRANS_BIK="BIK63750000040029622380245160" LM_DKK="2" ZRODLO="BIK" />
  <Zobowiazanie LP="1003" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="305000" KWOTA_LIMIT_PLN="305000" KWOTA_DO_SPLATY_W_WALUCIE="195000" KWOTA_DO_SPLATY_PLN="195000" RATA_W_WALUCIE="336" RATA_W_WALUCIE_ZDOLNOSC="336" RATA_PLN="336" DATA_OTW="2009-06-26" HIST_PLAT="00000" DATA_AKT="2013-04-22" NAZ_JED_SUB="GETIN NOBLE BANK" NRB="43156011660419188332508394" SALDO_NAL_WYM3M_PLN="0" NR_TRANS_BIK="BIK35750000040029500987245160" LM_DKK="3" ZRODLO="BIK" />
  <Zobowiazanie LP="1005" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="54000" KWOTA_LIMIT_PLN="54000" KWOTA_DO_SPLATY_W_WALUCIE="22500" KWOTA_DO_SPLATY_PLN="22500" RATA_W_WALUCIE="5400" RATA_W_WALUCIE_ZDOLNOSC="5400" RATA_PLN="5400" DATA_OTW="2013-03-18" HIST_PLAT="000000" DATA_AKT="2013-04-22" NAZ_JED_SUB="*EMPTY*" NRB="89102042876324780241607916" SALDO_NAL_WYM3M_PLN="0" NR_TRANS_BIK="BIK12750000040029637043245161" LM_DKK="4" ZRODLO="BIK" />
  <Zobowiazanie LP="1006" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="35143" KWOTA_LIMIT_PLN="35143" KWOTA_DO_SPLATY_W_WALUCIE="38823" KWOTA_DO_SPLATY_PLN="38823" RATA_W_WALUCIE="1124.58" RATA_W_WALUCIE_ZDOLNOSC="1124.58" RATA_PLN="1124.58" DATA_OTW="2012-11-22" HIST_PLAT="0000000" DATA_AKT="2013-04-22" NAZ_JED_SUB="*EMPTY*" NRB="31102042875986832340645475" SALDO_NAL_WYM3M_PLN="28598" NR_TRANS_BIK="BIK19750000040029625481245160" LM_DKK="0" ZRODLO="PSN" />
  <Zobowiazanie LP="1008" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="10000" KWOTA_LIMIT_PLN="10000" KWOTA_DO_SPLATY_W_WALUCIE="10000" KWOTA_DO_SPLATY_PLN="500" RATA_W_WALUCIE="500" RATA_W_WALUCIE_ZDOLNOSC="500" RATA_PLN="500" DATA_OTW="2013-01-22" HIST_PLAT="1" DATA_AKT="2013-04-22" NAZ_JED_SUB="*EMPTY*" NRB="91102042879184089770575650" SALDO_NAL_WYM3M_PLN="1932" NR_TRANS_BIK="BIK34750000040029631582245160" LM_DKK="1" ZRODLO="PSN" />
  <Zobowiazanie LP="1009" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="10000" KWOTA_LIMIT_PLN="10000" KWOTA_DO_SPLATY_W_WALUCIE="10000" KWOTA_DO_SPLATY_PLN="10000" RATA_W_WALUCIE="500" RATA_W_WALUCIE_ZDOLNOSC="500" RATA_PLN="500" DATA_OTW="2012-11-22" HIST_PLAT="2" DATA_AKT="2013-04-22" NAZ_JED_SUB="*EMPTY*" NRB="38102042870145882183525360" SALDO_NAL_WYM3M_PLN="28598" NR_TRANS_BIK="BIK46750000040029625445245161" LM_DKK="2" ZRODLO="PSN" />
  <Zobowiazanie LP="1010" TYP_ZOB="Kredyt niecelowy oraz studencki" WALUTA="Z這ty polski" ROLA="G堯wny kredytobiorca" ROLA_2="*EMPTY*" KWOTA_LIMIT_W_WALUCIE="11000" KWOTA_LIMIT_PLN="11000" KWOTA_DO_SPLATY_W_WALUCIE="11000" KWOTA_DO_SPLATY_PLN="11000" RATA_W_WALUCIE="483" RATA_W_WALUCIE_ZDOLNOSC="483" RATA_PLN="483" DATA_OTW="2013-03-18" HIST_PLAT="0" DATA_AKT="2013-04-22" NAZ_JED_SUB="*EMPTY*" NRB="71102042870218441840577347" SALDO_NAL_WYM3M_PLN="0" NR_TRANS_BIK="BIK82750000040029637079245160" LM_DKK="3" ZRODLO="PSN" />
</Zobowiazania>' as xml)
WHERE POST_CODE='47-331'
GO*/

UPDATE [dbo].[GETRAP_test_xml_out]
SET [FILES]=cast('<evaluated-model name="TEST_APP_GETRAP_1-TEST-024">
  <output-data name="T_1_BIK_NR_ZAPYT" value="null" />
  <output-data name="T_1_BIK_BLAD_KOD" value="RAP_P" />
  <output-data name="T_2_BIK_NR_ZAPYT" value="ND" />
  <output-data name="T_2_BIK_BLAD_KOD" value="ND" />
  <output-data name="FN_BIK_WYNIK" value="@LT@?xml version=@QUOT@1.0@QUOT@ encoding=@QUOT@UTF-8@QUOT@?@GT@&#xA;          
  @LT@Zobowiazania NumberOfSourceRep=@QUOT@1@QUOT@ BikRepRefNum_R1=@QUOT@017212985@QUOT@ RepQueryTime_R1=@QUOT@2017-01-13 godz. 13:08:29@QUOT@ NumberOfPositions_R1=@QUOT@0@QUOT@ RepPerson_R1=@QUOT@DOROTA FAΑA@QUOT@ RepPersonPesel_R1=@QUOT@95030633843@QUOT@ SRV_R1=@QUOT@VN@QUOT@ T_1_OWB=@QUOT@0@QUOT@ BikRepRefNum_R2=@QUOT@@QUOT@ RepQueryTime_R2=@QUOT@@QUOT@ NumberOfPositions_R2=@QUOT@@QUOT@ RepPerson_R2=@QUOT@@QUOT@ RepPersonPesel_R2=@QUOT@@QUOT@ SRV_R2=@QUOT@@QUOT@ T_2_OWB=@QUOT@0@QUOT@@GT@&#xA;      

  @LT@Zobowiazanie LP=@QUOT@1006@QUOT@ TYP_ZOB=@QUOT@Karta kredytowa@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@2100@QUOT@ KWOTA_LIMIT_PLN=@QUOT@245@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@350@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@470@QUOT@ RATA_W_WALUCIE=@QUOT@2100@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@2100@QUOT@ RATA_PLN=@QUOT@10@QUOT@ DATA_OTW=@QUOT@2012-11-22@QUOT@ HIST_PLAT=@QUOT@0@QUOT@ DATA_AKT=@QUOT@2013-04-22@QUOT@ NAZ_JED_SUB=@QUOT@GETIN NOBLE BANK@QUOT@ NRB=@QUOT@19156011663720094264426214@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@28598@QUOT@ NR_TRANS_BIK=@QUOT@BIK19750000040029625481245160@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@PSN@QUOT@ /@GT@&#xA;   
  @LT@Zobowiazanie LP=@QUOT@1001@QUOT@ TYP_ZOB=@QUOT@Karta kredytowa@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@2000@QUOT@ KWOTA_LIMIT_PLN=@QUOT@260@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@410@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@530@QUOT@ RATA_W_WALUCIE=@QUOT@2000@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@2000@QUOT@ RATA_PLN=@QUOT@40@QUOT@ DATA_OTW=@QUOT@2010-08-05@QUOT@ HIST_PLAT=@QUOT@@QUOT@ DATA_AKT=@QUOT@2013-07-31@QUOT@ NAZ_JED_SUB=@QUOT@*EMPTY*@QUOT@ NRB=@QUOT@36958410633720094264426214@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK35750000041842541497245001@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@PSN@QUOT@ /@GT@&#xA;
  @LT@Zobowiazanie LP=@QUOT@1006@QUOT@ TYP_ZOB=@QUOT@Karta kredytowa@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@2300@QUOT@ KWOTA_LIMIT_PLN=@QUOT@222@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@350@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@460@QUOT@ RATA_W_WALUCIE=@QUOT@2300@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@2300@QUOT@ RATA_PLN=@QUOT@10@QUOT@ DATA_OTW=@QUOT@2012-11-22@QUOT@ HIST_PLAT=@QUOT@00000@QUOT@ DATA_AKT=@QUOT@2013-04-22@QUOT@ NAZ_JED_SUB=@QUOT@*EMPTY*@QUOT@ NRB=@QUOT@38102042873720094264426214@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@28598@QUOT@ NR_TRANS_BIK=@QUOT@BIK19750000040029625481245160@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@BIK@QUOT@ /@GT@&#xA;   
  @LT@Zobowiazanie LP=@QUOT@1001@QUOT@ TYP_ZOB=@QUOT@Karta kredytowa@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@150@QUOT@ KWOTA_LIMIT_PLN=@QUOT@280@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@410@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@520@QUOT@ RATA_W_WALUCIE=@QUOT@150@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@150@QUOT@ RATA_PLN=@QUOT@40@QUOT@ DATA_OTW=@QUOT@2010-08-05@QUOT@ HIST_PLAT=@QUOT@000@QUOT@ DATA_AKT=@QUOT@2013-07-31@QUOT@ NAZ_JED_SUB=@QUOT@*EMPTY*@QUOT@ NRB=@QUOT@65124045462224410952858809@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK35750000041842541497245001@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@BIK@QUOT@ /@GT@&#xA;

     @LT@/Zobowiazania@GT@" />
</evaluated-model>' as xml)
WHERE POST_CODE='11-111' and [NR_BORROWERS] = 1
GO

/*Z這ty polski*/

/*UPDATE [dbo].[GETRAP_test_xml_out]
SET [FILES]=cast('<evaluated-model name="TEST_APP_GETRAP_1-TEST-024">
  <output-data name="T_1_BIK_NR_ZAPYT" value="null" />
  <output-data name="T_1_BIK_BLAD_KOD" value="RAP_P" />
  <output-data name="T_2_BIK_NR_ZAPYT" value="ND" />
  <output-data name="T_2_BIK_BLAD_KOD" value="ND" />
  <output-data name="FN_BIK_WYNIK" value="@LT@?xml version=@QUOT@1.0@QUOT@ encoding=@QUOT@UTF-8@QUOT@?@GT@&#xA;
  @LT@Zobowiazania NumberOfSourceRep=@QUOT@1@QUOT@ BikRepRefNum_R1=@QUOT@017212985@QUOT@ RepQueryTime_R1=@QUOT@2017-01-13 godz. 13:08:29@QUOT@ NumberOfPositions_R1=@QUOT@0@QUOT@ RepPerson_R1=@QUOT@DOROTA FAΑA@QUOT@ RepPersonPesel_R1=@QUOT@95030633843@QUOT@ SRV_R1=@QUOT@VN@QUOT@ T_1_OWB=@QUOT@0@QUOT@ BikRepRefNum_R2=@QUOT@@QUOT@ RepQueryTime_R2=@QUOT@@QUOT@ NumberOfPositions_R2=@QUOT@@QUOT@ RepPerson_R2=@QUOT@@QUOT@ RepPersonPesel_R2=@QUOT@@QUOT@ SRV_R2=@QUOT@@QUOT@ T_2_OWB=@QUOT@0@QUOT@@GT@&#xA;
  @LT@Zobowiazanie LP=@QUOT@1001@QUOT@ TYP_ZOB=@QUOT@Kredyt niecelowy oraz studencki@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@100@QUOT@ KWOTA_LIMIT_PLN=@QUOT@220@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@340@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@460@QUOT@ RATA_W_WALUCIE=@QUOT@10@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@90@QUOT@ RATA_PLN=@QUOT@5@QUOT@ DATA_OTW=@QUOT@2011-09-22@QUOT@ HIST_PLAT=@QUOT@000000@QUOT@ DATA_AKT=@QUOT@2013-04-22@QUOT@ NAZ_JED_SUB=@QUOT@GETIN NOBLE BANK@QUOT@ NRB=@QUOT@69156011664069265758537704@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK26750000040029582746245161@QUOT@ LM_DKK=@QUOT@0@QUOT@ ZRODLO=@QUOT@BIK@QUOT@ /@GT@&#xA;
  @LT@Zobowiazanie LP=@QUOT@1002@QUOT@ TYP_ZOB=@QUOT@Kredyt niecelowy oraz studencki@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@110@QUOT@ KWOTA_LIMIT_PLN=@QUOT@230@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@350@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@470@QUOT@ RATA_W_WALUCIE=@QUOT@20@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@80@QUOT@ RATA_PLN=@QUOT@10@QUOT@ DATA_OTW=@QUOT@2012-11-22@QUOT@ HIST_PLAT=@QUOT@000000@QUOT@ DATA_AKT=@QUOT@2013-04-22@QUOT@ NAZ_JED_SUB=@QUOT@*EMPTY*@QUOT@ NRB=@QUOT@34102042872278176988510291@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@28598@QUOT@ NR_TRANS_BIK=@QUOT@BIK19750000040029625481245160@QUOT@ LM_DKK=@QUOT@1@QUOT@ ZRODLO=@QUOT@PSN@QUOT@ /@GT@&#xA;         
  @LT@Zobowiazanie LP=@QUOT@1005@QUOT@ TYP_ZOB=@QUOT@Karta kredytowa@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@37100@QUOT@ KWOTA_LIMIT_PLN=@QUOT@37100@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@13083@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@13708@QUOT@ RATA_W_WALUCIE=@QUOT@607@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@607@QUOT@ RATA_PLN=@QUOT@607@QUOT@ DATA_OTW=@QUOT@2010-08-05@QUOT@ HIST_PLAT=@QUOT@000000@QUOT@ DATA_AKT=@QUOT@2013-07-31@QUOT@ NAZ_JED_SUB=@QUOT@GETIN NOBLE BANK@QUOT@ NRB=@QUOT@39156011662497426644649368@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK35750000041842541497245001@QUOT@ LM_DKK=@QUOT@*EMPTY*@QUOT@/@GT@
  @LT@Zobowiazanie LP=@QUOT@1005@QUOT@ TYP_ZOB=@QUOT@Limit debetowy w ROR@QUOT@ WALUTA=@QUOT@Z這ty polski@QUOT@ ROLA=@QUOT@G堯wny kredytobiorca@QUOT@ ROLA_2=@QUOT@*EMPTY*@QUOT@ KWOTA_LIMIT_W_WALUCIE=@QUOT@37100@QUOT@ KWOTA_LIMIT_PLN=@QUOT@37100@QUOT@ KWOTA_DO_SPLATY_W_WALUCIE=@QUOT@13083@QUOT@ KWOTA_DO_SPLATY_PLN=@QUOT@13708@QUOT@ RATA_W_WALUCIE=@QUOT@607@QUOT@ RATA_W_WALUCIE_ZDOLNOSC=@QUOT@607@QUOT@ RATA_PLN=@QUOT@607@QUOT@ DATA_OTW=@QUOT@2010-08-05@QUOT@ HIST_PLAT=@QUOT@000000@QUOT@ DATA_AKT=@QUOT@2013-07-31@QUOT@ NAZ_JED_SUB=@QUOT@GETIN NOBLE BANK@QUOT@ NRB=@QUOT@39156011662497426644649368@QUOT@ SALDO_NAL_WYM3M_PLN=@QUOT@0@QUOT@ NR_TRANS_BIK=@QUOT@BIK35750000041842541497245001@QUOT@ LM_DKK=@QUOT@*EMPTY*@QUOT@/@GT@  @LT@/Zobowiazania@GT@" />
</evaluated-model>' as xml)
WHERE POST_CODE='47-332' and [NR_BORROWERS] = 2
GO*/



