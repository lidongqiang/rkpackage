================================================================================
CalibrationTool.exe
Rockchip Calibration  Tool
Name:lanshh
mail:lsh@rock-chips.com
Tel :13616004136
================================================================================
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2016-03-21]V1.33.02
1 add DefImei1=865717020000322&DefImei2=865717020000348 int config.ini for writing configurable default imei
[2016-01-25]V1.33
1 add device type select menu 
2.1 Fix bug: in 3G cal, integrator of middle band will be cleared when band configuration are: middle 3G bands + low 3G bands 
2.2 Fix bug: in 3G cal, integrator of high bands will be cleared when no low or middle 3G band selected 
3 add read sw info before calibration
4 set timeout 2500 before connect socket pipe deb
[2015-12-23]V1.31.04
1 Add option to do 3G AFC on Agilent8960/CMU200
[2015-11-17]V1.31.04
1 Measure ACLR in 3G simple CV
2 Add 2 fixed freq points: 1910MHz and 1920MHz and remove 2500MHz
[2015-11-17]V1.31.03
1 optimizing statistic 
2 use new measure cable loss method
3 add option "stop if fail" when doing stress test
[2015-11-11]V1.31.02
1 add log statistic tool 
[2015-11-11]V1.31.01
[2015-11-05]V1.31
1 EngineDll/ReleaseNotes.txt
[2015-10-23]V1.30.02
1 fix at port detect fail in xp 
2 merge with Intel_Product_Line_RF_Tool_v2.0.4_RC2.exe
[2015-10-21]V1.30.01
1 Add handshake before doing calibration
2 merge engine dll fix result storage bug
[2015-10-21]V1.30
1 Using old method in cableloss measurement
[2015-10-16]V1.30
1 Add CMU200 support in cableloss measurement
[2015-10-15]V1.30
1 Add notify message when user doing cableloss measurement
[2015-10-10]V1.30
1 Chang cable loss mmeasure method,only measerue eight fix point
2 In cable loss measurement, popup warning window when cable loss difference between two adjacent frequencies is greater than 0.2dB.
3 Fix a bug in 2G Tx CV: test always passes even if Tx power is out of limit.
4 Execute nvm_store_sync only once in whole test, previousely, tool executes nvm_store at the end of each calibration actions: AFC, 2G Rx, 2G Tx, 3G
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-09-21]V1.29
1 Sleep 1s after commit nvm data
2 Add dut log,User can set DUTLOG to 0-3 to enable or disable dut log
[2015-09-20]V1.29
1 Add measeure cable loss and save function
[2015-09-19]V1.28
1 fixed save nvm tag fail when reboot 
2 merge with jb 20150917
3 update meas cable loss method
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-09-17]V1.27.02
1 add write imei2 imei1 option
[2015-09-15]V1.27.01
2 change store_nvm(cal_prodparm) to store_nvm_sync(cal_prodparm) to ensure nvm save succeffully 
[2015-09-14]V1.27.01
1 ui modify
[2015-09-11]V1.27
1 add notify message when rebooting device
2 local string for menu title
[2015-09-10]V1.27
1 remove band check when rf calibration
2 set afc default slop from 30 to 35
3 fix wifi cal commit
[2015-09-08]V1.27
1 add cable loss measeure
2 rf prompt message changge
[2015-09-06]V1.27
1 connect failed
2 merge with CodePackage_20150906
3 add read check function for stress test 
4 battery and charge label modify
5 enum gti com again if fail open
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-09-01]V1.26
1 reboot check button 
2 ui
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
[2015-08-25]V1.25
1 modify UI 
2 replace libipcs because of blocking when call DatalinkOpen
3 distinguish locally administered(MAC +4) and globally unique(MAC +1)
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


