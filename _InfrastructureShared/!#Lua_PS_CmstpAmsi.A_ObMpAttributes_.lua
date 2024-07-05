local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_AMSI_OPERATION_PPID
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1.image_path
  L2_2 = L2_2(L3_3)
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = mp
  L4_4 = L4_4.GetProcessCommandLine
  L5_5 = L1_1.ppid
  L6_6 = L4_4(L5_5)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L4_4(L5_5))
  if L2_2 and L3_3 then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L2_2
    L6_6 = "\\system32\\dllhost.exe"
    L4_4 = L4_4(L5_5, L6_6, 1, true)
    if L4_4 then
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L3_3
      L6_6 = "{3e5fc7f9-9a51-4367-9063-a120244fbec7}"
      L4_4 = L4_4(L5_5, L6_6, 1, true)
      if L4_4 then
        L4_4 = mp
        L4_4 = L4_4.INFECTED
        return L4_4
      end
    end
  end
  L4_4 = mp
  L4_4 = L4_4.GetParentProcInfo
  L5_5 = L1_1.ppid
  L4_4 = L4_4(L5_5)
  if L4_4 ~= nil then
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = L4_4.image_path
    L5_5 = L5_5(L6_6)
    L6_6 = string
    L6_6 = L6_6.lower
    L6_6 = L6_6(mp.GetProcessCommandLine(L4_4.ppid))
    if L5_5 and L6_6 and string.find(L5_5, "\\system32\\dllhost.exe", 1, true) and string.find(L6_6, "{3e5fc7f9-9a51-4367-9063-a120244fbec7}", 1, true) then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
