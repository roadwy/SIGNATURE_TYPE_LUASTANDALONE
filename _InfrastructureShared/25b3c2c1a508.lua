local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.integrity_level
  if L1_1 > L2_2 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = sysio
L1_1 = L1_1.RegExpandUserKey
L1_1 = L1_1(L2_2)
if L1_1 then
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = sysio
    L7_7 = L7_7.RegOpenKey
    L8_8 = L6_6
    L7_7 = L7_7(L8_8)
    if L7_7 then
      L8_8 = sysio
      L8_8 = L8_8.GetRegValueType
      L9_9 = L7_7
      L8_8 = L8_8(L9_9, "DelegateExecute")
      if L8_8 then
        L9_9 = sysio
        L9_9 = L9_9.GetRegValueAsString
        L9_9 = L9_9(L7_7, "")
        if L9_9 and string.len(L9_9) > 4 then
          return mp.INFECTED
        end
      end
    end
  end
end
return L2_2
