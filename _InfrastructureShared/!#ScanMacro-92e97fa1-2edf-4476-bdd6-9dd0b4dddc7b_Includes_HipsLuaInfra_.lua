local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L5_5 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3, L4_4))
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.IsSampled
L3_3 = 20000
L4_4 = false
L5_5 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, true)
if L2_2 == true then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 < 20 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L4_4 = -14
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 ~= "vbaproject.bin" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
else
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "BM_OFFICE_FILE"
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  else
    L2_2, L3_3 = nil, nil
    L4_4 = string
    L4_4 = L4_4.len
    L5_5 = L1_1
    L4_4 = L4_4(L5_5)
    if L4_4 >= 5 then
      L4_4 = string
      L4_4 = L4_4.sub
      L5_5 = L1_1
      L4_4 = L4_4(L5_5, -4)
      L2_2 = L4_4
    end
    L4_4 = string
    L4_4 = L4_4.len
    L5_5 = L1_1
    L4_4 = L4_4(L5_5)
    if L4_4 >= 20 then
      L4_4 = string
      L4_4 = L4_4.sub
      L5_5 = L1_1
      L4_4 = L4_4(L5_5, -14)
      L3_3 = L4_4
    end
    if L2_2 ~= ".xls" and L2_2 ~= ".doc" and L3_3 ~= "vbaproject.bin" then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
end
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_CNAME
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L5_5 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4, L5_5))
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_mpattribute
L4_4 = "SCRIPT:LoadWin32importsfromMacro"
L3_3 = L3_3(L4_4)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.get_mpattribute
  L4_4 = "MHSTR:LoadWin32importsfromMacro"
  L3_3 = L3_3(L4_4)
  if not L3_3 then
    L3_3 = MpCommon
    L3_3 = L3_3.QueryPersistContext
    L4_4 = L2_2
    L5_5 = "enghipscpy:MHSTRLoadWin32importsfromMacroInside"
    L3_3 = L3_3(L4_4, L5_5)
    if not L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
  end
end
L3_3 = GetCtxOfficeProc
L3_3 = L3_3()
if L3_3 ~= "productivity" and L3_3 ~= "productivity2" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = mp
L5_5 = L5_5.getfilename
L5_5 = L5_5(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
L4_4 = L4_4(L5_5, ">%[msilres", 1, true)
if L4_4 then
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L5_5 = "LUA:InsideMSILRES"
  L4_4(L5_5)
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = false
L5_5 = MpCommon
L5_5 = L5_5.PathToWin32Path
L5_5 = L5_5(L2_2)
L2_2 = L5_5
if L2_2 ~= nil and L2_2 ~= "" then
  L5_5 = string
  L5_5 = L5_5.lower
  L5_5 = L5_5(L2_2)
  L2_2 = L5_5
  L5_5 = sysio
  L5_5 = L5_5.IsFileExists
  L5_5 = L5_5(L2_2)
  if L5_5 then
    L4_4 = true
  end
end
if L4_4 then
  L5_5 = string
  L5_5 = L5_5.find
  L5_5 = L5_5(L2_2, "\\program files\\microsoft office\\", 1, true)
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.find
  L5_5 = L5_5(L2_2, "\\program files (x86)\\microsoft office\\", 1, true)
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.find
  L5_5 = L5_5(L2_2, "\\program files\\windowsapps\\microsoft.office.desktop.excel", 1, true)
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.find
  L5_5 = L5_5(L2_2, "\\program files (x86)\\windowsapps\\microsoft.office.desktop.excel", 1, true)
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = mp
  L5_5 = L5_5.IsPathExcludedForHipsRule
  L5_5 = L5_5(L2_2, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b")
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = nil
L5_5 = GetInvolvedFileInCmdLnIfExistOnMachine()
if L5_5 ~= nil and mp.IsPathExcludedForHipsRule(L5_5, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
mp.set_mpattribute("MpDisableCaching")
mp.SetHipsRule("92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b")
return mp.BLOCKACCESS
