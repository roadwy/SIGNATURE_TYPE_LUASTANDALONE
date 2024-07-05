local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
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
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = {}
L2_2["svchost.exe"] = true
L2_2["ccsvchst.exe"] = true
L3_3 = L2_2[L1_1]
if L3_3 == true then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3["cmd.exe"] = true
L3_3["powershell.exe"] = true
L4_4 = {}
L4_4["cscript.exe"] = true
L4_4["wscript.exe"] = true
L5_5 = {}
L5_5["mshta.exe"] = true
L5_5["rundll32.exe"] = true
L5_5["regasm.exe"] = true
L5_5["regsvc.exe"] = true
L5_5["regsvr32.exe"] = true
L5_5["msbuild.exe"] = true
L5_5["certutil.exe"] = true
L5_5["installutil.exe"] = true
L6_6 = false
L7_7 = nil
L8_8 = L3_3[L1_1]
if L8_8 == true then
  L6_6 = true
  L7_7 = 3289195922
else
  L8_8 = L4_4[L1_1]
  if L8_8 == true then
    L6_6 = true
    L7_7 = 1560572968
  else
    L8_8 = L5_5[L1_1]
    if L8_8 == true then
      L6_6 = true
      L7_7 = 704857278
    end
  end
end
if L6_6 == false or L7_7 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = mp
L8_8 = L8_8.getfilename
L8_8 = L8_8()
if not MpCommon.QueryPersistContext(L8_8, "DroppedByBitsadmin") and not MpCommon.QueryPersistContext(L8_8, "DroppedByBITS") then
  return mp.CLEAN
end
if ((getAgePrev(true) > -1 or getAgePrev(true) > -1 or mp.get_mpattribute("agePrevQueried") or mp.get_mpattribute("BM_BlockedForBITS") or MpCommon.QueryPersistContext(L8_8, "agePrevQueried") or MpCommon.QueryPersistContext(L8_8, "BM_BlockedForBITS")) and true) == true then
  if mp.get_mpattribute("MpDisableCaching") then
    mp.clear_mpattribute("MpDisableCaching")
  end
  if mp.get_mpattribute("queryAgePrev") then
    mp.clear_mpattribute("queryAgePrev")
  end
  clearPersistContext(L8_8, "queryAgePrev")
  if mp.get_mpattribute("disableCachingQueryAgePrev") then
    mp.clear_mpattribute("disableCachingQueryAgePrev")
  end
  clearPersistContext(L8_8, "disableCachingQueryAgePrev")
end
if getAgePrev(true) == -1 and getAgePrev(true) == -1 and ((getAgePrev(true) > -1 or getAgePrev(true) > -1 or mp.get_mpattribute("agePrevQueried") or mp.get_mpattribute("BM_BlockedForBITS") or MpCommon.QueryPersistContext(L8_8, "agePrevQueried") or MpCommon.QueryPersistContext(L8_8, "BM_BlockedForBITS")) and true) == false then
  if mp.IsTrustedFile(false) == true then
    return mp.CLEAN
  end
  if not MpCommon.QueryPersistContext(L8_8, "BM_AgePrevLookedUpForBITS") then
    MpCommon.AppendPersistContext(L8_8, "BM_AgePrevLookedUpForBITS", 0)
  end
  mp.set_mpattribute("BM_AgePrevLookedUpForBITS")
  if not mp.get_mpattribute("disableCachingQueryAgePrev") then
    mp.set_mpattribute("disableCachingQueryAgePrev")
  end
  if not MpCommon.QueryPersistContext(L8_8, "disableCachingQueryAgePrev") then
    MpCommon.AppendPersistContext(L8_8, "disableCachingQueryAgePrev", 0)
  end
elseif getAgePrev(true) > -1 and getAgePrev(true) <= 1 and getAgePrev(true) > -1 and getAgePrev(true) <= 100 then
  if not MpCommon.QueryPersistContext(L8_8, "BM_BlockedForBITS") then
    MpCommon.AppendPersistContext(L8_8, "BM_BlockedForBITS", 0)
  end
  mp.set_mpattribute("BM_BlockedForBITS")
  return mp.INFECTED
else
  mp.ReportLowfi(L8_8, L7_7)
end
return mp.CLEAN
