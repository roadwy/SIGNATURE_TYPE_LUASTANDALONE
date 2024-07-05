local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = {
  L1_1,
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6
}
L1_1 = "SOAP:https://unitedstates.cp.wd.microsoft.com/WdCpSrvc.asmx"
L2_2 = "REST:https://unitedstates.cp.wd.microsoft.com/wdcp.svc/submitReport"
L3_3 = "BOND:https://unitedstates.cp.wd.microsoft.com/wdcp.svc/bond/submitReport"
L4_4 = "XPLATBROKER:https://unitedstates.x.cp.wd.microsoft.com/api/report"
L5_5 = "XPLATTEST:{\"macTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2120136\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2144709\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"uri\":\"https://ussus1eastprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://ussus1westprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://unitedstates.x.cp.wd.microsoft.com/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://unitedstates.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://unitedstates.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}"
L6_6 = ""
L1_1 = database
L1_1 = L1_1.LoadDBVar
L2_2 = database
L2_2 = L2_2.DBVAR_ARRAY_WIDESTRING
L3_3 = "MAPSURL_US"
L4_4 = L0_0
L5_5 = 1
L1_1(L2_2, L3_3, L4_4, L5_5)
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12
}
L2_2 = "SOAP:https://mdav.us.stg.endpoint.security.microsoft.com/mdav/WdCpSrvc.asmx"
L3_3 = "REST:https://mdav.us.stg.endpoint.security.microsoft.com/mdav/wdcp.svc/submitReport"
L4_4 = "BOND:https://mdav.us.stg.endpoint.security.microsoft.com/mdav/wdcp.svc/bond/submitreport"
L5_5 = "AGWURI:https://mdav.us.stg.endpoint.security.microsoft.com"
L6_6 = "XPLATBROKER:https://mdav.us.stg.endpoint.security.microsoft.com/xplat/api/report"
L7_7 = "DEFUPDATE:https://mdav.us.stg.endpoint.security.microsoft.com/packages"
L8_8 = "DEFUPDATEMAC:https://mdav.us.stg.endpoint.security.microsoft.com/packages/?ostype=mac"
L9_9 = "DEFUPDATELIN:https://mdav.us.stg.endpoint.security.microsoft.com/packages/?ostype=linux"
L10_10 = "ECSURI:https://mdav.us.stg.endpoint.security.microsoft.com/ecs"
L11_11 = "XPLATTEST:{\"macTest\":[{\"api\":\"/packages/?ostype=mac\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"api\":\"/packages/?ostype=linux\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"api\":\"/xplat/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"api\":\"/mdav/test\",\"method\":\"GET\",\"response\":404},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}"
L12_12 = ""
L2_2 = database
L2_2 = L2_2.LoadDBVar
L3_3 = database
L3_3 = L3_3.DBVAR_ARRAY_WIDESTRING
L4_4 = "MAPSURL_GW_SANDBOX"
L5_5 = L1_1
L6_6 = 1
L2_2(L3_3, L4_4, L5_5, L6_6)
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L3_3 = "SOAP:https://wdcpppe.microsoft-ppe.com/WdCpSrvc.asmx"
L4_4 = "REST:https://wdcpppe.microsoft-ppe.com/wdcp.svc/submitReport"
L5_5 = "BOND:https://wdcpppe.microsoft-ppe.com/wdcp.svc/bond/submitreport"
L6_6 = "XPLATBROKER:https://unitedstates.x.cp.wd.microsoft.com/api/report"
L7_7 = ""
L3_3 = database
L3_3 = L3_3.LoadDBVar
L4_4 = database
L4_4 = L4_4.DBVAR_ARRAY_WIDESTRING
L5_5 = "MAPSURL_SANDBOX"
L6_6 = L2_2
L7_7 = 1
L3_3(L4_4, L5_5, L6_6, L7_7)
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9
}
L4_4 = "SOAP:https://europe.cp.wd.microsoft.com/WdCpSrvc.asmx"
L5_5 = "REST:https://europe.cp.wd.microsoft.com/wdcp.svc/submitReport"
L6_6 = "BOND:https://europe.cp.wd.microsoft.com/wdcp.svc/bond/submitReport"
L7_7 = "XPLATBROKER:https://europe.x.cp.wd.microsoft.com/api/report"
L8_8 = "XPLATTEST:{\"macTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2120136\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2144709\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"uri\":\"https://usseu1northprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://usseu1westprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://europe.x.cp.wd.microsoft.com/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://europe.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://europe.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}"
L9_9 = ""
L4_4 = database
L4_4 = L4_4.LoadDBVar
L5_5 = database
L5_5 = L5_5.DBVAR_ARRAY_WIDESTRING
L6_6 = "MAPSURL_EU"
L7_7 = L3_3
L8_8 = 1
L4_4(L5_5, L6_6, L7_7, L8_8)
L4_4 = {
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10
}
L5_5 = "SOAP:https://australia.cp.wd.microsoft.com/WdCpSrvc.asmx"
L6_6 = "REST:https://australia.cp.wd.microsoft.com/wdcp.svc/submitReport"
L7_7 = "BOND:https://australia.cp.wd.microsoft.com/wdcp.svc/bond/submitReport"
L8_8 = "XPLATBROKER:https://australia.x.cp.wd.microsoft.com/api/report"
L9_9 = "XPLATTEST:{\"macTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2120136\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2144709\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"uri\":\"https://ussau1eastprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://ussau1southeastprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://australia.x.cp.wd.microsoft.com/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://australia.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://australia.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}"
L10_10 = ""
L5_5 = database
L5_5 = L5_5.LoadDBVar
L6_6 = database
L6_6 = L6_6.DBVAR_ARRAY_WIDESTRING
L7_7 = "MAPSURL_AU"
L8_8 = L4_4
L9_9 = 1
L5_5(L6_6, L7_7, L8_8, L9_9)
L5_5 = {
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11
}
L6_6 = "SOAP:https://unitedkingdom.cp.wd.microsoft.com/WdCpSrvc.asmx"
L7_7 = "REST:https://unitedkingdom.cp.wd.microsoft.com/wdcp.svc/submitReport"
L8_8 = "BOND:https://unitedkingdom.cp.wd.microsoft.com/wdcp.svc/bond/submitReport"
L9_9 = "XPLATBROKER:https://unitedkingdom.x.cp.wd.microsoft.com/api/report"
L10_10 = "XPLATTEST:{\"macTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2120136\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2144709\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"uri\":\"https://ussuk1southprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://ussuk1westprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://unitedkingdom.x.cp.wd.microsoft.com/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://unitedkingdom.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://unitedkingdom.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}"
L11_11 = ""
L6_6 = database
L6_6 = L6_6.LoadDBVar
L7_7 = database
L7_7 = L7_7.DBVAR_ARRAY_WIDESTRING
L8_8 = "MAPSURL_UK"
L9_9 = L5_5
L10_10 = 1
L6_6(L7_7, L8_8, L9_9, L10_10)
L6_6 = {
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12
}
L7_7 = "SOAP:https://switzerland.cp.wd.microsoft.com/WdCpSrvc.asmx"
L8_8 = "REST:https://switzerland.cp.wd.microsoft.com/wdcp.svc/submitReport"
L9_9 = "BOND:https://switzerland.cp.wd.microsoft.com/wdcp.svc/bond/submitReport"
L10_10 = "XPLATBROKER:https://switzerland.x.cp.wd.microsoft.com/api/report"
L11_11 = "XPLATTEST:{\"macTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2120136\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2144709\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"uri\":\"https://ussch1northprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://ussch1westprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://switzerland.x.cp.wd.microsoft.com/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://switzerland.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://switzerland.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}"
L12_12 = ""
L7_7 = database
L7_7 = L7_7.LoadDBVar
L8_8 = database
L8_8 = L8_8.DBVAR_ARRAY_WIDESTRING
L9_9 = "MAPSURL_CH"
L10_10 = L6_6
L11_11 = 1
L7_7(L8_8, L9_9, L10_10, L11_11)
L7_7 = {
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13
}
L8_8 = "SOAP:https://india.cp.wd.microsoft.com/WdCpSrvc.asmx"
L9_9 = "REST:https://india.cp.wd.microsoft.com/wdcp.svc/submitReport"
L10_10 = "BOND:https://india.cp.wd.microsoft.com/wdcp.svc/bond/submitReport"
L11_11 = "XPLATBROKER:https://india.x.cp.wd.microsoft.com/api/report"
L12_12 = "XPLATTEST:{\"macTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2120136\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"uri\":\"https://go.microsoft.com/fwlink/?linkid=2144709\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"uri\":\"https://ussin1southprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://ussin1centralprod.blob.core.windows.net/\",\"method\":\"GET\",\"response\":400},{\"uri\":\"https://india.x.cp.wd.microsoft.com/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://india.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://india.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}"
L13_13 = ""
L8_8 = database
L8_8 = L8_8.LoadDBVar
L9_9 = database
L9_9 = L9_9.DBVAR_ARRAY_WIDESTRING
L10_10 = "MAPSURL_IN"
L11_11 = L7_7
L12_12 = 1
L8_8(L9_9, L10_10, L11_11, L12_12)
L8_8 = {
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  "XPLATTEST:{\"macTest\":[{\"api\":\"/packages/?ostype=mac\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"api\":\"/packages/?ostype=linux\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"api\":\"/storage/ussus1eastprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/storage/ussus1westprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/xplat/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"api\":\"/mdav/test\",\"method\":\"GET\",\"response\":404},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://unitedstates.smartscreen.microsoft.com//api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://unitedstates.smartscreen-prod.microsoft.com//api/network/mac\",\"method\":\"POST\",\"response\":400}]}",
  ""
}
L9_9 = "SOAP:https://mdav.us.endpoint.security.microsoft.com/mdav/WdCpSrvc.asmx"
L10_10 = "REST:https://mdav.us.endpoint.security.microsoft.com/mdav/wdcp.svc/submitReport"
L11_11 = "BOND:https://mdav.us.endpoint.security.microsoft.com/mdav/wdcp.svc/bond/submitreport"
L12_12 = "AGWURI:https://mdav.us.endpoint.security.microsoft.com"
L13_13 = "XPLATBROKER:https://mdav.us.endpoint.security.microsoft.com/xplat/api/report"
L14_14 = "DEFUPDATE:https://mdav.us.endpoint.security.microsoft.com/packages"
L15_15 = "DEFUPDATEMAC:https://mdav.us.endpoint.security.microsoft.com/packages/?ostype=mac"
L16_16 = "DEFUPDATELIN:https://mdav.us.endpoint.security.microsoft.com/packages/?ostype=linux"
L17_17 = "ECSURI:https://mdav.us.endpoint.security.microsoft.com/ecs"
L9_9 = database
L9_9 = L9_9.LoadDBVar
L10_10 = database
L10_10 = L10_10.DBVAR_ARRAY_WIDESTRING
L11_11 = "MAPSURL_GW_US"
L12_12 = L8_8
L13_13 = 1
L9_9(L10_10, L11_11, L12_12, L13_13)
L9_9 = {
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  "ECSURI:https://mdav.eu.endpoint.security.microsoft.com/ecs",
  "XPLATTEST:{\"macTest\":[{\"api\":\"/packages/?ostype=mac\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"api\":\"/packages/?ostype=linux\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"api\":\"/storage/usseu1northprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/storage/usseu1westprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/xplat/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"api\":\"/mdav/test\",\"method\":\"GET\",\"response\":404},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://europe.smartscreen.microsoft.com//api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://europe.smartscreen-prod.microsoft.com//api/network/mac\",\"method\":\"POST\",\"response\":400}]}",
  ""
}
L10_10 = "SOAP:https://mdav.eu.endpoint.security.microsoft.com/mdav/WdCpSrvc.asmx"
L11_11 = "REST:https://mdav.eu.endpoint.security.microsoft.com/mdav/wdcp.svc/submitReport"
L12_12 = "BOND:https://mdav.eu.endpoint.security.microsoft.com/mdav/wdcp.svc/bond/submitreport"
L13_13 = "AGWURI:https://mdav.eu.endpoint.security.microsoft.com"
L14_14 = "XPLATBROKER:https://mdav.eu.endpoint.security.microsoft.com/xplat/api/report"
L15_15 = "DEFUPDATE:https://mdav.eu.endpoint.security.microsoft.com/packages"
L16_16 = "DEFUPDATEMAC:https://mdav.eu.endpoint.security.microsoft.com/packages/?ostype=mac"
L17_17 = "DEFUPDATELIN:https://mdav.eu.endpoint.security.microsoft.com/packages/?ostype=linux"
L10_10 = database
L10_10 = L10_10.LoadDBVar
L11_11 = database
L11_11 = L11_11.DBVAR_ARRAY_WIDESTRING
L12_12 = "MAPSURL_GW_EU"
L13_13 = L9_9
L14_14 = 1
L10_10(L11_11, L12_12, L13_13, L14_14)
L10_10 = {
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  "DEFUPDATELIN:https://mdav.uk.endpoint.security.microsoft.com/packages/?ostype=linux",
  "ECSURI:https://mdav.uk.endpoint.security.microsoft.com/ecs",
  "XPLATTEST:{\"macTest\":[{\"api\":\"/packages/?ostype=mac\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"api\":\"/packages/?ostype=linux\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"api\":\"/storage/ussuk1southprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/storage/ussuk1westprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/xplat/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"api\":\"/mdav/test\",\"method\":\"GET\",\"response\":404},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://unitedkingdom.smartscreen.microsoft.com//api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://unitedkingdom.smartscreen-prod.microsoft.com//api/network/mac\",\"method\":\"POST\",\"response\":400}]}",
  ""
}
L11_11 = "SOAP:https://mdav.uk.endpoint.security.microsoft.com/mdav/WdCpSrvc.asmx"
L12_12 = "REST:https://mdav.uk.endpoint.security.microsoft.com/mdav/wdcp.svc/submitReport"
L13_13 = "BOND:https://mdav.uk.endpoint.security.microsoft.com/mdav/wdcp.svc/bond/submitreport"
L14_14 = "AGWURI:https://mdav.uk.endpoint.security.microsoft.com"
L15_15 = "XPLATBROKER:https://mdav.uk.endpoint.security.microsoft.com/xplat/api/report"
L16_16 = "DEFUPDATE:https://mdav.uk.endpoint.security.microsoft.com/packages"
L17_17 = "DEFUPDATEMAC:https://mdav.uk.endpoint.security.microsoft.com/packages/?ostype=mac"
L11_11 = database
L11_11 = L11_11.LoadDBVar
L12_12 = database
L12_12 = L12_12.DBVAR_ARRAY_WIDESTRING
L13_13 = "MAPSURL_GW_UK"
L14_14 = L10_10
L15_15 = 1
L11_11(L12_12, L13_13, L14_14, L15_15)
L11_11 = {
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  "DEFUPDATEMAC:https://mdav.au.endpoint.security.microsoft.com/packages/?ostype=mac",
  "DEFUPDATELIN:https://mdav.au.endpoint.security.microsoft.com/packages/?ostype=linux",
  "ECSURI:https://mdav.au.endpoint.security.microsoft.com/ecs",
  "XPLATTEST:{\"macTest\":[{\"api\":\"/packages/?ostype=mac\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"api\":\"/packages/?ostype=linux\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"api\":\"/storage/ussau1eastprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/storage/ussau1southeastprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/xplat/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"api\":\"/mdav/test\",\"method\":\"GET\",\"response\":404},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://australia.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://australia.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}",
  ""
}
L12_12 = "SOAP:https://mdav.au.endpoint.security.microsoft.com/mdav/WdCpSrvc.asmx"
L13_13 = "REST:https://mdav.au.endpoint.security.microsoft.com/mdav/wdcp.svc/submitReport"
L14_14 = "BOND:https://mdav.au.endpoint.security.microsoft.com/mdav/wdcp.svc/bond/submitreport"
L15_15 = "AGWURI:https://mdav.au.endpoint.security.microsoft.com"
L16_16 = "XPLATBROKER:https://mdav.au.endpoint.security.microsoft.com/xplat/api/report"
L17_17 = "DEFUPDATE:https://mdav.au.endpoint.security.microsoft.com/packages"
L12_12 = database
L12_12 = L12_12.LoadDBVar
L13_13 = database
L13_13 = L13_13.DBVAR_ARRAY_WIDESTRING
L14_14 = "MAPSURL_GW_AU"
L15_15 = L11_11
L16_16 = 1
L12_12(L13_13, L14_14, L15_15, L16_16)
L12_12 = {
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  "DEFUPDATE:https://mdav.ch.endpoint.security.microsoft.com/packages",
  "DEFUPDATEMAC:https://mdav.ch.endpoint.security.microsoft.com/packages/?ostype=mac",
  "DEFUPDATELIN:https://mdav.ch.endpoint.security.microsoft.com/packages/?ostype=linux",
  "XPLATTEST:{\"macTest\":[{\"api\":\"/packages/?ostype=mac\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"api\":\"/packages/?ostype=linux\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"api\":\"/storage/ussch1northprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/storage/ussch1westprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/xplat/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"api\":\"/mdav/test\",\"method\":\"GET\",\"response\":404},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://switzerland.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://switzerland.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}",
  ""
}
L13_13 = "SOAP:https://mdav.ch.endpoint.security.microsoft.com/mdav/WdCpSrvc.asmx"
L14_14 = "REST:https://mdav.ch.endpoint.security.microsoft.com/mdav/wdcp.svc/submitReport"
L15_15 = "BOND:https://mdav.ch.endpoint.security.microsoft.com/mdav/wdcp.svc/bond/submitreport"
L16_16 = "AGWURI:https://mdav.ch.endpoint.security.microsoft.com"
L17_17 = "XPLATBROKER:https://mdav.ch.endpoint.security.microsoft.com/xplat/api/report"
L13_13 = database
L13_13 = L13_13.LoadDBVar
L14_14 = database
L14_14 = L14_14.DBVAR_ARRAY_WIDESTRING
L15_15 = "MAPSURL_GW_CH"
L16_16 = L12_12
L17_17 = 1
L13_13(L14_14, L15_15, L16_16, L17_17)
L13_13 = {
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  "XPLATBROKER:https://mdav.ina.endpoint.security.microsoft.com/xplat/api/report",
  "DEFUPDATE:https://mdav.ina.endpoint.security.microsoft.com/packages",
  "DEFUPDATEMAC:https://mdav.ina.endpoint.security.microsoft.com/packages/?ostype=mac",
  "DEFUPDATELIN:https://mdav.ina.endpoint.security.microsoft.com/packages/?ostype=linux",
  "XPLATTEST:{\"macTest\":[{\"api\":\"/packages/?ostype=mac\",\"method\":\"HEAD\",\"response\":200}],\"linuxTest\":[{\"api\":\"/packages/?ostype=linux\",\"method\":\"HEAD\",\"response\":200}],\"xplatTest\":[{\"api\":\"/storage/ussin1southprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/storage/ussin1centralprod/\",\"method\":\"GET\",\"response\":400},{\"api\":\"/xplat/api/report\",\"method\":\"GET\",\"response\":200,\"verifySsl\":{}},{\"api\":\"/mdav/test\",\"method\":\"GET\",\"response\":404},{\"uri\":\"https://nf.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://india.smartscreen.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400},{\"uri\":\"https://india.smartscreen-prod.microsoft.com/api/network/mac\",\"method\":\"POST\",\"response\":400}]}",
  ""
}
L14_14 = "SOAP:https://mdav.ina.endpoint.security.microsoft.com/mdav/WdCpSrvc.asmx"
L15_15 = "REST:https://mdav.ina.endpoint.security.microsoft.com/mdav/wdcp.svc/submitReport"
L16_16 = "BOND:https://mdav.ina.endpoint.security.microsoft.com/mdav/wdcp.svc/bond/submitreport"
L17_17 = "AGWURI:https://mdav.ina.endpoint.security.microsoft.com"
L14_14 = database
L14_14 = L14_14.LoadDBVar
L15_15 = database
L15_15 = L15_15.DBVAR_ARRAY_WIDESTRING
L16_16 = "MAPSURL_GW_IN"
L17_17 = L13_13
L14_14(L15_15, L16_16, L17_17, 1)
L14_14 = {
  L15_15,
  L16_16,
  L17_17,
  "XPLATBROKER:https://unitedstates1.x.cp.wd.microsoft.us/api/report",
  "ECSURI:https://config.ecs.gov.teams.microsoft.us/",
  ""
}
L15_15 = "SOAP:https://unitedstates1.cp.wd.microsoft.us/WdCpSrvc.asmx"
L16_16 = "REST:https://unitedstates1.cp.wd.microsoft.us/wdcp.svc/submitReport"
L17_17 = "BOND:https://unitedstates1.cp.wd.microsoft.us/wdcp.svc/bond/submitReport"
L15_15 = false
L16_16 = versioning
L16_16 = L16_16.GetEngineBuild
L16_16 = L16_16()
if L16_16 >= 16700 then
  L16_16 = string
  L16_16 = L16_16.lower
  L17_17 = versioning
  L17_17 = L17_17.GetOrgID
  L17_17 = L17_17()
  L16_16 = L16_16(L17_17, L17_17())
  if L16_16 == "baf4c18d-0c51-4329-9062-65c312537885" or L16_16 == "d6ba914f-6a8f-47f9-9843-23913bb1a5a9" then
    L17_17 = {
      "SOAP:https://unitedstates4.cp.wd.microsoft.us/WdCpSrvc.asmx",
      "REST:https://unitedstates4.cp.wd.microsoft.us/wdcp.svc/submitReport",
      "BOND:https://unitedstates4.cp.wd.microsoft.us/wdcp.svc/bond/submitReport",
      "XPLATBROKER:https://unitedstates4.x.cp.wd.microsoft.us/api/report",
      "ECSURI:https://gccmod.ecs.office.com/",
      ""
    }
    database.LoadDBVar(database.DBVAR_ARRAY_WIDESTRING, "MAPSURL_FFL4", L17_17, 1)
    L15_15 = true
  end
end
if L15_15 == false then
  L16_16 = database
  L16_16 = L16_16.LoadDBVar
  L17_17 = database
  L17_17 = L17_17.DBVAR_ARRAY_WIDESTRING
  L16_16(L17_17, "MAPSURL_FFL4", L14_14, 1)
end
L16_16 = {
  L17_17,
  "REST:https://unitedstates4.cp.wd.microsoft.us/wdcp.svc/submitReport",
  "BOND:https://unitedstates4.cp.wd.microsoft.us/wdcp.svc/bond/submitReport",
  "XPLATBROKER:https://unitedstates4.x.cp.wd.microsoft.us/api/report",
  "ECSURI:https://gccmod.ecs.office.com/",
  ""
}
L17_17 = "SOAP:https://unitedstates4.cp.wd.microsoft.us/WdCpSrvc.asmx"
L17_17 = database
L17_17 = L17_17.LoadDBVar
L17_17(database.DBVAR_ARRAY_WIDESTRING, "MAPSURL_FFL4Mod", L16_16, 1)
L17_17 = {
  "SOAP:https://unitedstates2.cp.wd.microsoft.us/WdCpSrvc.asmx",
  "REST:https://unitedstates2.cp.wd.microsoft.us/wdcp.svc/submitReport",
  "BOND:https://unitedstates2.cp.wd.microsoft.us/wdcp.svc/bond/submitReport",
  "XPLATBROKER:https://unitedstates2.x.cp.wd.microsoft.us/api/report",
  "ECSURI:https://config.ecs.dod.teams.microsoft.us/",
  ""
}
database.LoadDBVar(database.DBVAR_ARRAY_WIDESTRING, "MAPSURL_FFL5", L17_17, 1)
