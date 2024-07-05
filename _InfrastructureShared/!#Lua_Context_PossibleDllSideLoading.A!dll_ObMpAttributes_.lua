local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
L7_7 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 4 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2["version.dll"] = ":\\windows\\system32"
L2_2["activeds.dll"] = ":\\windows\\system32"
L2_2["credui.dll"] = ":\\windows\\system32"
L2_2["dpx.dll"] = ":\\windows\\system32"
L2_2["dui70.dll"] = ":\\windows\\system32"
L2_2["duser.dll"] = ":\\windows\\system32"
L2_2["dwmapi.dll"] = ":\\windows\\system32"
L2_2["dxgi.dll"] = ":\\windows\\system32"
L2_2["fvewiz.dll"] = ":\\windows\\system32"
L2_2["mfc42u.dll"] = ":\\windows\\system32"
L2_2["oleacc.dll"] = ":\\windows\\system32"
L2_2["secur32.dll"] = ":\\windows\\system32"
L2_2["slc.dll"] = ":\\windows\\system32"
L2_2["spp.dll"] = ":\\windows\\system32"
L2_2["tapi32.dll"] = ":\\windows\\system32"
L2_2["uxtheme.dll"] = ":\\windows\\system32"
L2_2["wer.dll"] = ":\\windows\\system32"
L2_2["winbrand.dll"] = ":\\windows\\system32"
L2_2["winmm.dll"] = ":\\windows\\system32"
L2_2["winsta.dll"] = ":\\windows\\system32"
L2_2["wtsapi32.dll"] = ":\\windows\\system32"
L2_2["xmllite.dll"] = ":\\windows\\system32"
L3_3 = L2_2[L1_1]
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.getfilename
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L4_4 = L4_4(L5_5)
if L4_4 ~= nil then
  L5_5 = #L4_4
elseif L5_5 < 1 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L6_6 = L4_4
L5_5 = L4_4.sub
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7, 8)
if L5_5 == "\\device\\" then
  L5_5 = MpCommon
  L5_5 = L5_5.PathToWin32Path
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L4_4 = L5_5
  if L4_4 == nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L4_4 = L5_5
end
L6_6 = L4_4
L5_5 = L4_4.sub
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7, 4)
if L5_5 == "\\\\?\\" then
  L6_6 = L4_4
  L5_5 = L4_4.sub
  L7_7 = 5
  L5_5 = L5_5(L6_6, L7_7)
  L4_4 = L5_5
end
L5_5 = string
L5_5 = L5_5.sub
L6_6 = L4_4
L7_7 = 2
L5_5 = L5_5(L6_6, L7_7)
if L5_5 == L3_3 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.get_contextdata
L6_6 = mp
L6_6 = L6_6.CONTEXT_DATA_PROCESSNAME
L5_5 = L5_5(L6_6)
L6_6 = L5_5
L5_5 = L5_5.lower
L5_5 = L5_5(L6_6)
if L5_5 ~= nil then
  L6_6 = #L5_5
elseif L6_6 == 0 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = L4_4
L7_7 = "\\"
L6_6 = L6_6 .. L7_7 .. L5_5
L7_7 = MpCommon
L7_7 = L7_7.QueryPersistContext
L7_7 = L7_7(L6_6, "CheckPossibleDllSideLoadingA")
if L7_7 then
  L7_7 = "Lua:Context/PossibleDllSideLoading.A!"
  L7_7 = L7_7 .. L1_1
  mp.set_mpattribute(L7_7)
  return mp.INFECTED
else
  L7_7 = mp
  L7_7 = L7_7.get_contextdata
  L7_7 = L7_7(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
  if L7_7 == true then
    L7_7 = L4_4
    L7_7 = L7_7 .. "\\" .. L1_1
    if mp.IsKnownFriendlyFile(L7_7, false, false) == true or mp.IsTrustedFile(false) == true then
      return mp.CLEAN
    end
    mp.set_mpattribute("MpDisableCaching")
  end
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
