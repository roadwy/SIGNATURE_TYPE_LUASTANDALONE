local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:IsDotNetAMSIScan_IIS"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L1_1 = "Detection:PUA:"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L1_1 = "Lua:PeOriginalName!"
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = #L0_0
elseif L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L2_2 = "Detection:"
L1_1 = L1_1(L2_2)
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
L3_3 = L2_2(L3_3, L4_4)
if not L2_2 or not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4, L5_5 = nil, nil
if #L0_0 == 1 then
  L4_4 = L0_0[#L0_0]
  if L4_4 ~= nil then
    L4_4 = string.lower(L4_4):match("lua:peoriginalname!(.*)$")
  end
end
if L1_1 and #L1_1 ~= 0 then
  L5_5 = L1_1[#L1_1]
  if L5_5 ~= nil then
    L5_5 = string.lower(L5_5):match("detection:(.*)$")
  end
end
if L4_4 and L5_5 then
  TT_SendBMSigTrigger(L3_3, "IIS_InMemoryLoadBlocked", L5_5 .. ";" .. L4_4, 2)
end
return mp.CLEAN
