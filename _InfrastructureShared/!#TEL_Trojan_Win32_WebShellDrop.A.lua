local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L1_1 = "%ExchangeInstallPath%"
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" or L0_0 == "%ExchangeInstallPath%" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = sysio
L1_1 = L1_1.IsFileExists
L2_2 = L0_0
L3_3 = "bin\\Microsoft.Exchange.Store.Service.exe"
L2_2 = L2_2 .. L3_3
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L2_2 = L2_2(L3_3)
L3_3 = "(%.[^%.]+)$"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= ".asp" and L1_1 ~= ".aspx" and L1_1 ~= ".ashx" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = mp
L3_3 = L3_3.getfilename
L4_4 = mp
L4_4 = L4_4.bitor
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_FULL
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
L8_8 = L4_4(L5_5, L6_6)
L8_8 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5, L6_6))
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5, L6_6)))
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L4_4 = string
L4_4 = L4_4.lower
L5_5 = L0_0
L4_4 = L4_4(L5_5)
L5_5 = string
L5_5 = L5_5.find
L6_6 = L3_3
L7_7 = L4_4
L8_8 = "clientaccess\\oab\\temp\\"
L7_7 = L7_7 .. L8_8
L8_8 = 1
L5_5 = L5_5(L6_6, L7_7, L8_8, true)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = MpCommon
L5_5 = L5_5.ExpandEnvironmentVariables
L6_6 = "%SystemDrive%\\inetpub\\wwwroot"
L5_5 = L5_5(L6_6)
if L5_5 == nil or L5_5 == "" then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = L5_5
L6_6 = L6_6(L7_7)
L7_7 = string
L7_7 = L7_7.find
L8_8 = L3_3
L7_7 = L7_7(L8_8, L6_6, 1, true)
if L7_7 then
  L7_7 = mp
  L7_7 = L7_7.INFECTED
  return L7_7
end
L7_7 = MpCommon
L7_7 = L7_7.ExpandEnvironmentVariables
L8_8 = "%windir%\\system32\\inetsrv\\config\\applicationHost.config"
L7_7 = L7_7(L8_8)
if L7_7 == nil or L7_7 == "" then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = MpCommon
L8_8 = L8_8.GetIisInstallPaths
L8_8 = L8_8(L7_7)
if L8_8 == nil or L8_8 == "" then
  return mp.CLEAN
end
for _FORV_12_, _FORV_13_ in ipairs(L8_8) do
  if _FORV_13_.Path ~= nil and _FORV_13_.Path ~= "" and string.find(L3_3, string.lower(_FORV_13_.Path), 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
