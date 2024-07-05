local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L1_1 = mp
  L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
  L0_0 = L0_0(L1_1)
  L2_2 = L0_0
  L1_1 = L0_0.sub
  L3_3 = 1
  L1_1 = L1_1(L2_2, L3_3, L4_4)
  if L1_1 == "\\device\\" then
    L1_1 = MpCommon
    L1_1 = L1_1.PathToWin32Path
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
    if L0_0 == nil then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
  L1_1 = false
  L2_2 = MpCommon
  L2_2 = L2_2.GetPersistContext
  L3_3 = L0_0
  L2_2 = L2_2(L3_3)
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = {}
  L3_3.SuspExeFileDroppedBySystemProcessC_sysdir = "Lua:Context/OpenExeAfterDropBySystem.C!sysdir"
  L3_3.SuspFileDroppedBySystemProcessC_sysdir = "Lua:Context/OpenAfterDropBySystem.C!sysdir"
  L3_3.SuspExeFileDroppedBySystemProcessC_windir = "Lua:Context/OpenExeAfterDropBySystem.C!windir"
  L3_3.SuspFileDroppedBySystemProcessC_windir = "Lua:Context/OpenAfterDropBySystem.C!windir"
  for L7_7, L8_8 in L4_4(L5_5) do
    for L12_12, L13_13 in L9_9(L10_10) do
      if L8_8 == L12_12 then
        mp.set_mpattribute(L13_13)
        L1_1 = true
      end
    end
  end
  if L1_1 == true then
    return L4_4
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
