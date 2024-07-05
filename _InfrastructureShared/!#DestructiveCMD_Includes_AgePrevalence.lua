local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
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
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSDEVICEPATH
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2
L4_4 = "\\"
L5_5 = L0_0
L3_3 = L3_3 .. L4_4 .. L5_5
L4_4 = string
L4_4 = L4_4.lower
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L3_3 = L4_4
L4_4 = MpCommon
L4_4 = L4_4.QueryPersistContext
L5_5 = L3_3
L6_6 = "RunsDestructiveCMDsParent"
L4_4 = L4_4(L5_5, L6_6)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.set_mpattribute
L5_5 = "BM_FileModByDestructiveCMDParent"
L4_4(L5_5)
L4_4 = MpCommon
L4_4 = L4_4.QueryPersistContext
L5_5 = L3_3
L6_6 = "RunsDestructiveCMDsParentBlock"
L4_4 = L4_4(L5_5, L6_6)
if not L4_4 then
  L4_4 = MpCommon
  L4_4 = L4_4.QueryPersistContext
  L5_5 = L3_3
  L6_6 = "RunsDestructiveCMDsParentStopLookup"
  L4_4 = L4_4(L5_5, L6_6)
elseif L4_4 then
  L4_4 = clearPersistContext
  L5_5 = L3_3
  L6_6 = "disableCachingQueryAgePrev"
  L4_4(L5_5, L6_6)
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = -1
L5_5 = -1
L6_6 = MpCommon
L6_6 = L6_6.GetPersistContext
L6_6 = L6_6(L7_7)
if L6_6 ~= nil then
  for L10_10, L11_11 in L7_7(L8_8) do
    if tonumber(string.match(L11_11, "^Age:([0-9]+)$")) ~= nil and L4_4 < tonumber(string.match(L11_11, "^Age:([0-9]+)$")) then
      L4_4 = tonumber(string.match(L11_11, "^Age:([0-9]+)$"))
    end
    if tonumber(string.match(L11_11, "^Prevalence:([0-9]+)$")) ~= nil and L5_5 < tonumber(string.match(L11_11, "^Prevalence:([0-9]+)$")) then
      L5_5 = tonumber(string.match(L11_11, "^Prevalence:([0-9]+)$"))
    end
  end
end
if L4_4 > -1 and L4_4 <= 1 and L5_5 > -1 and L5_5 <= 100 then
  if not L7_7 then
    L10_10 = 0
    L7_7(L8_8, L9_9, L10_10)
  end
  L7_7(L8_8, L9_9)
elseif L4_4 > 1 or L5_5 > 100 then
  if not L7_7 then
    L10_10 = 0
    L7_7(L8_8, L9_9, L10_10)
  end
  L7_7(L8_8, L9_9)
elseif not L7_7 then
  L10_10 = 0
  L7_7(L8_8, L9_9, L10_10)
end
return L7_7
