local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L9_9 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L2_2(L3_3))
if L1_1 ~= "normal.dotm" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L9_9 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L2_2(L3_3))
L2_2 = {}
L2_2["explorer.exe"] = true
L2_2["searchindexer.exe"] = true
L2_2["searchprotocolhost.exe"] = true
L2_2["searchfilterhost.exe"] = true
L3_3 = L2_2[L1_1]
if L3_3 == true then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
L4_4 = false
L5_5 = false
L6_6 = false
L7_7 = false
L8_8 = mp
L8_8 = L8_8.get_mpattribute
L9_9 = "MHSTR:MacroInside"
L8_8 = L8_8(L9_9)
if L8_8 then
  L7_7 = true
end
if L1_1 == "winword.exe" then
  L3_3 = true
  L8_8 = mp
  L8_8 = L8_8.get_contextdata
  L9_9 = mp
  L9_9 = L9_9.CONTEXT_DATA_PROCESS_PPID
  L8_8 = L8_8(L9_9)
  L9_9 = string
  L9_9 = L9_9.lower
  L9_9 = L9_9(mp.GetProcessCommandLine(L8_8))
  if L9_9 ~= nil and string.len(L9_9) > 0 then
    if string.find(L9_9, "winword.exe\"?$") ~= nil then
      L5_5 = true
    elseif string.find(L9_9, "normal.dotm", 1, true) ~= nil then
      L6_6 = true
    end
  end
else
  L8_8 = string
  L8_8 = L8_8.lower
  L9_9 = mp
  L9_9 = L9_9.get_contextdata
  L9_9 = L9_9(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
  L8_8 = L8_8(L9_9, L9_9(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
  L9_9 = MpCommon
  L9_9 = L9_9.PathToWin32Path
  L9_9 = L9_9(L8_8)
  L9_9 = L9_9 .. "\\" .. L1_1
  if mp.IsKnownFriendlyFile(L9_9, false, false) == true then
    L4_4 = true
  end
end
L8_8 = mp
L8_8 = L8_8.SCANREASON_ONOPEN
if L0_0 == L8_8 then
  if L3_3 == true and L6_6 == true then
    L8_8 = mp
    L8_8 = L8_8.ReportLowfi
    L9_9 = MpCommon
    L9_9 = L9_9.PathToWin32Path
    L9_9 = L9_9(mp.getfilename())
    L8_8(L9_9, 1441392505)
  end
elseif L3_3 == true then
  if L5_5 == true then
    if L7_7 == false then
      L8_8 = mp
      L8_8 = L8_8.ReportLowfi
      L9_9 = MpCommon
      L9_9 = L9_9.PathToWin32Path
      L9_9 = L9_9(mp.getfilename())
      L8_8(L9_9, 629347318)
    else
      L8_8 = mp
      L8_8 = L8_8.ReportLowfi
      L9_9 = MpCommon
      L9_9 = L9_9.PathToWin32Path
      L9_9 = L9_9(mp.getfilename())
      L8_8(L9_9, 1384391520)
    end
  elseif L6_6 == true then
    if L7_7 == false then
      L8_8 = mp
      L8_8 = L8_8.ReportLowfi
      L9_9 = MpCommon
      L9_9 = L9_9.PathToWin32Path
      L9_9 = L9_9(mp.getfilename())
      L8_8(L9_9, 3415044826)
    else
      L8_8 = mp
      L8_8 = L8_8.ReportLowfi
      L9_9 = MpCommon
      L9_9 = L9_9.PathToWin32Path
      L9_9 = L9_9(mp.getfilename())
      L8_8(L9_9, 3163177548)
    end
  end
elseif L4_4 == true then
  L8_8 = mp
  L8_8 = L8_8.ReportLowfi
  L9_9 = MpCommon
  L9_9 = L9_9.PathToWin32Path
  L9_9 = L9_9(mp.getfilename())
  L8_8(L9_9, 741695453)
else
  L8_8 = mp
  L8_8 = L8_8.ReportLowfi
  L9_9 = MpCommon
  L9_9 = L9_9.PathToWin32Path
  L9_9 = L9_9(mp.getfilename())
  L8_8(L9_9, 1530031947)
end
L8_8 = mp
L8_8 = L8_8.CLEAN
return L8_8
