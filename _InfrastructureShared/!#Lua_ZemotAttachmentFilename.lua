local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L6_6 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2(L3_3))
    L2_2 = string
    L2_2 = L2_2.len
    L2_2 = L2_2(L3_3)
    if L2_2 > 15 and L2_2 <= 30 then
      L6_6 = 9
      if L3_3 == "rechnung_" then
        if L3_3 == ".exe" then
          for L6_6 = 10, L2_2 - 4 do
            if string.byte(L1_1, L6_6) < 48 or string.byte(L1_1, L6_6) > 57 then
              return mp.CLEAN
            end
          end
          L3_3(L4_4)
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
