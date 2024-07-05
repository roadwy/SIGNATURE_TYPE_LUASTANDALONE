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
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_FILEPATH
    L7_7 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_FILENAME
    L2_2 = L2_2(L3_3)
    L3_3 = string
    L3_3 = L3_3.len
    L3_3 = L3_3(L4_4)
    if L3_3 > 11 and L3_3 <= 19 then
      L7_7 = 7
      if L4_4 == "update_" then
        if L4_4 == "\\temp" then
          if L4_4 == ".exe" then
            for L7_7 = 8, L3_3 - 4 do
              if string.byte(L2_2, L7_7) < 48 or string.byte(L2_2, L7_7) > 57 then
                return mp.CLEAN
              end
            end
            L4_4(L5_5)
          end
        end
      end
    elseif L4_4 <= 8 then
      L7_7 = 3
      if L4_4 == "mss" then
        if L4_4 == "\\temp" then
          if L4_4 == ".exe" then
            L4_4(L5_5)
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
