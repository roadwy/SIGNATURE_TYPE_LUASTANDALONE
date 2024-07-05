local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
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
L15_15 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L2_2(L3_3))
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 4 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "winbio.dll|amsi.dll|wldp.dll|hid.dll|activeds.dll|credui.dll|dpx.dll|dui70.dll|duser.dll|dwmapi.dll|dxgi.dll|fvewiz.dll|mfc42u.dll|oleacc.dll|secur32.dll|slc.dll|spp.dll|tapi32.dll|uxtheme.dll|wer.dll|winbrand.dll|winmm.dll|winsta.dll|wtsapi32.dll|xmllite.dll"
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = L1_1
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L4_4 = {}
L4_4.AttributeName = "Lua:Bioload"
L5_5 = {}
L5_5.BM_FaceFodUninstaller_EXE = ""
L4_4.ContextNameList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["winbio.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:AmsiPreload"
L5_5 = {}
L5_5.BM_POWERSHELL_EXE = ""
L4_4.ContextNameList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["amsi.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:wldpBypass"
L5_5 = {}
L5_5.BM_RUNDLL32_EXE = ""
L4_4.ContextNameList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["wldp.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:hidPreload"
L5_5 = {}
L5_5.BM_OSK_EXE = ""
L4_4.ContextNameList = L5_5
L5_5 = {}
L5_5["%programfiles%\\common files\\microsoft shared\\ink"] = ""
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["hid.dll"] = L4_4
L4_4 = L3_3[L1_1]
if L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = "Lua:Preload"
L5_5 = L3_3[L1_1]
L5_5 = L5_5.AttributeName
if L5_5 ~= nil then
  L5_5 = L3_3[L1_1]
  L4_4 = L5_5.AttributeName
end
L5_5 = L3_3[L1_1]
L5_5 = L5_5.ContextNameList
if L5_5 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L3_3[L1_1]
L5_5 = L5_5.CleanPathList
if L5_5 == nil then
  L5_5 = L3_3[L1_1]
  L5_5 = L5_5.SuspPathList
  if L5_5 == nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = mp
L5_5 = L5_5.getfilename
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
L5_5 = L5_5(L6_6)
if L5_5 ~= nil then
  L6_6 = #L5_5
elseif L6_6 < 1 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = normalize_path
L7_7 = L5_5
L6_6 = L6_6(L7_7)
L5_5 = L6_6
L6_6 = string
L6_6 = L6_6.lower
L7_7 = mp
L7_7 = L7_7.get_contextdata
L15_15 = L7_7(L8_8)
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L7_7(L8_8))
if L6_6 ~= nil then
  L7_7 = #L6_6
elseif L7_7 < 1 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = normalize_path
L7_7 = L7_7(L8_8)
L6_6 = L7_7
if L5_5 ~= L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = ""
if L8_8 ~= nil then
  for L11_11, L12_12 in L8_8(L9_9) do
    L13_13 = normalize_path
    L14_14 = mp
    L14_14 = L14_14.ContextualExpandEnvironmentVariables
    L15_15 = L11_11
    L15_15 = L14_14(L15_15)
    L13_13 = L13_13(L14_14, L15_15, L14_14(L15_15))
    if L13_13 == L5_5 then
      L14_14 = mp
      L14_14 = L14_14.CLEAN
      return L14_14
    end
  end
  L7_7 = "NotInCleanPathList"
end
if L8_8 ~= nil then
  for L11_11, L12_12 in L8_8(L9_9) do
    L13_13 = normalize_path
    L14_14 = mp
    L14_14 = L14_14.ContextualExpandEnvironmentVariables
    L15_15 = L11_11
    L15_15 = L14_14(L15_15)
    L13_13 = L13_13(L14_14, L15_15, L14_14(L15_15))
    if L13_13 == L5_5 then
      L7_7 = "SuspPathList"
      break
    end
  end
end
L15_15 = L9_9(L10_10)
if L8_8 ~= nil then
elseif L9_9 == 0 then
  return L9_9
end
for L13_13, L14_14 in L10_10(L11_11) do
  L15_15 = MpCommon
  L15_15 = L15_15.QueryPersistContext
  L15_15 = L15_15(L9_9, L13_13)
  if L15_15 then
    L15_15 = L4_4
    L15_15 = L15_15 .. "_" .. L13_13 .. "!" .. L7_7
    if #L15_15 > 62 then
      return mp.CLEAN
    end
    mp.set_mpattribute(L15_15)
    return mp.INFECTED
  end
end
return L10_10
