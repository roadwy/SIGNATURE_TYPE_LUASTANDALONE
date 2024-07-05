local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isdriver
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.isdamaged
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "BM_RoxstageProcessEval"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "BM_RoxstageProcessBlock"
L0_0 = L0_0(L1_1)
if L0_0 then
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
else
  if L0_0 == L1_1 then
    L1_1 = mp
    L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
    if L0_0 == L1_1 then
      L1_1 = mp
      L1_1 = L1_1.get_contextdata
      L2_2 = mp
      L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
      L1_1 = L1_1(L2_2)
    elseif L1_1 == true then
      L1_1 = mp
      L1_1 = L1_1.SCANREASON_ONOPEN
      if L0_0 == L1_1 then
        L1_1 = mp
        L1_1 = L1_1.get_contextdata
        L2_2 = mp
        L2_2 = L2_2.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
        L1_1 = L1_1(L2_2)
      end
    end
end
elseif L1_1 ~= true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILE_AGE
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 ~= nil and L1_1 > 7200 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L2_2 = L2_2()
L3_3 = string
L3_3 = L3_3.lower
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = L2_2
L7_7 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5))
L4_4 = MpCommon
L4_4 = L4_4.ExpandEnvironmentVariables
L5_5 = "%programfiles(x86)%"
L4_4 = L4_4(L5_5)
if L4_4 ~= nil and L4_4 ~= "" then
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L3_3
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(L4_4)
  L5_5 = L5_5(L6_6, L7_7, 1, true)
  if L5_5 ~= nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = MpCommon
L5_5 = L5_5.ExpandEnvironmentVariables
L6_6 = "%programfiles%"
L5_5 = L5_5(L6_6)
if L5_5 ~= nil and L5_5 ~= "" then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L6_6 = L6_6(L7_7, string.lower(L5_5), 1, true)
  if L6_6 ~= nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
end
L6_6 = MpCommon
L6_6 = L6_6.QueryPersistContext
L7_7 = L2_2
L6_6 = L6_6(L7_7, "BM_RoxstageProcessEval")
if L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = MpCommon
L6_6 = L6_6.QueryPersistContext
L7_7 = L2_2
L6_6 = L6_6(L7_7, "BM_RoxstageProcessBlock")
if L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.IsTrustedFile
L7_7 = false
L6_6 = L6_6(L7_7)
if L6_6 == true then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = MpCommon
L6_6 = L6_6.GetPersistContextCountNoPath
L7_7 = "roxstagePersistedProcs"
L6_6 = L6_6(L7_7)
if L6_6 >= 15 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.set_mpattribute
L7_7("BM_RoxstageProcessEval")
L7_7 = MpCommon
L7_7 = L7_7.AppendPersistContext
L7_7(L2_2, "BM_RoxstageProcessEval", 0)
if L6_6 == 0 then
  L7_7 = {}
  table.insert(L7_7, L2_2)
  MpCommon.SetPersistContextNoPath("roxstagePersistedProcs", L7_7, 0)
else
  L7_7 = MpCommon
  L7_7 = L7_7.AppendPersistContextNoPath
  L7_7("roxstagePersistedProcs", L2_2, 0)
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
