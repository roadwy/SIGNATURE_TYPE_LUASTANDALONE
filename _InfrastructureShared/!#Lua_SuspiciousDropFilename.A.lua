local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
function L0_0(A0_9)
  local L1_10
  L1_10 = A0_9 == 97 or A0_9 == 101 or A0_9 == 105 or A0_9 == 111 or A0_9 == 117
  return L1_10
end
is_vowel = L0_0
function L0_0(A0_11)
  local L1_12
  L1_12 = A0_11 >= 97 and A0_11 <= 122 or A0_11 >= 74 and A0_11 <= 90
  return L1_12
end
is_alpha = L0_0
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
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L2_2 = L2_2 - 4
  if L2_2 == 6 then
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L4_4, L5_5)
  elseif L3_3 ~= ".exe" then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.lower
  L8_8 = L4_4(L5_5)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5))
  if L4_4 ~= "\\application data" then
  elseif L4_4 == "\\appdata\\roaming" then
    for L7_7 = 1, L2_2 do
      L8_8 = string
      L8_8 = L8_8.byte
      L8_8 = L8_8(L1_1, L7_7)
      if not is_alpha(L8_8) or is_vowel(L8_8) then
        return mp.CLEAN
      end
    end
    L4_4(L5_5)
    return L4_4
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
