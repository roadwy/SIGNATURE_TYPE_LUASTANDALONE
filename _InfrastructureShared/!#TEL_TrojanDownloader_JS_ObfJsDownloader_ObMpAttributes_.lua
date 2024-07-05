local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L0_0["wscript.exe"] = true
L0_0["cscript.exe"] = true
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L9_9 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L2_2(L3_3))
L2_2 = L0_0[L1_1]
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
L2_2 = L2_2(L3_3)
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.GetProcessCommandLine
L5_5 = L2_2
L9_9 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L4_4(L5_5))
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.getfilename
L5_5 = mp
L5_5 = L5_5.bitor
L9_9 = L5_5(L6_6, L7_7)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L5_5(L6_6, L7_7))
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = "programdata\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}$"
if not L6_6 then
  if not L6_6 then
    return L6_6
  end
end
hexToAscii = L6_6
for L9_9 in L6_6(L7_7, L8_8) do
  if not L9_9:find("^68747470") then
    L9_9 = string.lower(hexToAscii(L9_9))
    if L9_9 then
      MpCommon.SetPersistContext(L9_9, {"isErik"}, 0)
    end
  end
end
return L6_6
