================================================================================
CalibrationTool.exe
Rockchip Calibration  Tool
Name:lanshh
mail:lsh@rock-chips.com
Tel :13616004136
================================================================================
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-08-24]V1.25
1 modify UI 
[2015-08-21]V1.25
1 add read write imei to verify imei writing
2 ConvertStrWToMacAddress fix
3 add WriteCheckIMEI function
4 zjb 20150820 dlls
[2015-08-16]V1.25
1 merge CodePackage_20150814
2 Add write device sn ,bt mac,wifi mac
3 seperate do cc cv rv afc
[2015-08-13]V1.23
1 Intel_Product_Line_RF_Tool_v1.8.10
2 GSM:TxLimit_OL_Freq_Comp  64-> 80
[2015-08-04]V1.23
1 merge with CodePackage_20150731,retry cc 
2 never modify sn if failed
[2015-07-31]V1.22
1 Flags: ignoreversion onlyifdoesntexist
2 zjb 1.8.2 weibu factory modify
[2015-07-30]V1.22
1 merge with zjb CodePackage_20150724
2 wjx modify 
            <AFCAdjARFCNPCL>
                <GSM900>
                    <ChannelNumber>62</ChannelNumber>
                    <PCL>12</PCL>   
                    <expectedpwr>13</expectedpwr>
                </GSM900>
<!-- from 15 - 12 -->
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-07-19]V1.22
1 Add open log folder button in config window
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-07-13]V1.21
1 modify ilpc f start point
2 merge with zjb 20150714 dlls,retry when spectrum failed
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-07-19]V1.22
1 Add open log folder button in config window
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-07-13]V1.21
1 modify ilpc f start point
2 merge with zjb 20150714 dlls,retry when spectrum failed
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-07-07]V1.20
1 update dlls adds log for success rate record
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-06-24]V1.19
1、fix SN used up 2 
2、modify function GTIClientSendRecv timeout from 2000 to 5000
[2015-06-18]V1.18
1、weibu field modify xml 
    Band_1:BERLevel_RMC384_0  -90 -> -102
    #RSCP_limit_0              -3  -> -8
[2015-06-13]V1.17
1、for 3G band error select
2、for nand machine,try open client more times 
[2015-06-10]V1.17
1、replace CUST_Sofia3G from zjb's modify
    --- 20150603-zjb-afc-modify/XML/CUST_Sofia3G.xml        2015-05-25 10:51:54.444431700 +0800
    +++ xml-version/20150610/CUST_Sofia3G_RFCalRV.xml       2015-06-10 10:56:14.562188600 +0800
    @@ -10,12 +10,18 @@
             <!-- Do NOT set DUT to NORMAL mode after calibration: 1-Don't set Normal,0-set Normal-->
             <DontSetNormal>1</DontSetNormal>
             <!-- How to read SW build and Version info. 0 - don't read it, 1 - use at+xgendata, 2 - use at@registry -->
    -               <GetSWbuildAndLabelVersion>2</GetSWbuildAndLabelVersion>
    +               <GetSWbuildAndLabelVersion>1</GetSWbuildAndLabelVersion>
                    <SetUTACalibmode>1</SetUTACalibmode>
                    <!-- Read Chip id from NVM -->
                    <ReadChipID>1</ReadChipID>
             <RFVerification>1</RFVerification>
         </Common>
    +       <Startup>
    +        <!-- Enable the startup sequence to be executed -->
    +        <Execute>1</Execute>
    +        <Item1>at@bmm:UtaModeGet()</Item1>
    +        <Item2>at@gticom:set_trace_severity(trace_debug)</Item2>
    +    </Startup>
         <GSM>
             <Rx>
                    <!---0 = Rx, 1 = Rd, 2 = Rx and Rd -->
    @@ -23,7 +29,7 @@
                               <Fast>
                      <Method>1</Method>
                    </Fast>
    -                       <RxExtraDelay>5</RxExtraDelay>
    +                       <RxExtraDelay>8</RxExtraDelay>
             </Rx>
             <Tx>
                <DCXOSupport>1</DCXOSupport>
[2015-06-08-2] V1.17
1、merge with zjb TestEngineDLL_20150603 release dll
        Avoid device crash when AFC failed 
[2015-06-08-1] V1.16
1、merge with zjb api 2015-05-27 lib version 1205
2、use wjx modify RF_Verification.xml(2015-05-26)
        GSM:Rx:MCS9BSLevel         : -90  -> -84
        UMTS:Band_1:BERLevel_0     : -104 -> -102
        UMTS:Band_2:BERLevel_0     : -104 -> -102
        UMTS:Band_5:BERLevel_0     : -104 -> -102
        UMTS:Band_8:BERLevel_0     : -104 -> -102
        UMTS:TxILPClimit_max	   : 0.6  -> 0.7
        UMTS:TxILPClimit_min	   : -0.6 -> -0.7


