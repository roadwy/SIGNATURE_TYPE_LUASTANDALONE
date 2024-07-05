local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Detection:Backdoor:Win32/ExchgReflectiveAssembly.A!SuspAssembly"
L0_0 = L0_0(L1_1)
if not L0_0 then
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
L1_1 = pcall
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_AMSI_OPERATION_PPID
L2_2 = L1_1(L2_2, L3_3)
if not L1_1 or not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
L4_4, L5_5 = nil, nil
L6_6 = mp
L6_6 = L6_6.GetProcessCommandLine
L7_7 = L2_2
L6_6 = L6_6(L7_7)
if L6_6 then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(L6_6)
  L7_7 = L7_7.match
  L7_7 = L7_7(L7_7, "-ap \"([^\"]+)\"")
  L4_4 = L7_7
  if L4_4 ~= nil then
    L3_3 = true
  end
end
L7_7 = #L0_0
if L7_7 == 1 then
  L7_7 = #L0_0
  L5_5 = L0_0[L7_7]
  if L5_5 ~= nil then
    L7_7 = string
    L7_7 = L7_7.lower
    L7_7 = L7_7(L5_5)
    L7_7 = L7_7.match
    L7_7 = L7_7(L7_7, "lua:peoriginalname!(.*)$")
    L5_5 = L7_7
  end
end
if L5_5 and L3_3 then
  L7_7 = string
  L7_7 = L7_7.format
  L7_7 = L7_7("InMemoryLoadBlocked: Application: '%s', Module: '%s'", L4_4, L5_5)
  mp.SetAmsiReportPath(L7_7)
elseif L5_5 and not L3_3 then
  L7_7 = string
  L7_7 = L7_7.format
  L7_7 = L7_7("InMemoryLoadBlocked: Module: '%s'", L5_5)
  mp.SetAmsiReportPath(L7_7)
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
