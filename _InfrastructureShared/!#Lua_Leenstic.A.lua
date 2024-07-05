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
elseif L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_FILEPATH
  L7_7 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 ~= "\\application data" then
    L2_2 = string
    L2_2 = L2_2.sub
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, L4_4)
  elseif L2_2 == "\\appdata\\roaming" then
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_FILENAME
    L2_2 = L2_2(L3_3)
    L3_3 = string
    L3_3 = L3_3.len
    L3_3 = L3_3(L4_4)
    if L3_3 ~= 10 then
      return L4_4
    end
    for L7_7 = 1, L3_3 - 4 do
      if string.byte(L2_2, L7_7) < 48 or string.byte(L2_2, L7_7) > 57 then
        return mp.CLEAN
      end
    end
    L7_7 = 3
    if L5_5 ~= 0 then
      L5_5(L6_6)
      return L5_5
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
