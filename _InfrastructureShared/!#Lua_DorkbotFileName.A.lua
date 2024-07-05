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
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_FILENAME
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 == "flashdefaultpack.exe" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 == ".exe" then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
  elseif L2_2 ~= 20 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L7_7 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4))
  L3_3 = string
  L3_3 = L3_3.sub
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 ~= "\\application data" then
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L4_4, L5_5)
  elseif L3_3 == "\\appdata\\roaming" then
    L3_3 = string
    L3_3 = L3_3.byte
    L3_3 = L3_3(L4_4)
    if not (L3_3 < 65) then
      L3_3 = string
      L3_3 = L3_3.byte
      L3_3 = L3_3(L4_4)
    elseif L3_3 > 90 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.len
    L3_3 = L3_3(L4_4)
    for L7_7 = 2, L3_3 - 4 do
      if string.byte(L1_1, L7_7) < 97 or string.byte(L1_1, L7_7) > 122 then
        return mp.CLEAN
      end
    end
    L7_7 = 3
    if L5_5 ~= 0 then
      L5_5(L6_6)
      return L5_5
    end
    L5_5(L6_6)
    return L5_5
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
