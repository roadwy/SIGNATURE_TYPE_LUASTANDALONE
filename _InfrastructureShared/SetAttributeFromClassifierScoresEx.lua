local L1_0
function L1_0(A0_1, A1_2, A2_3)
  local L3_4, L4_5, L5_6, L6_7, L7_8
  for L6_7, L7_8 in L3_4(L4_5) do
    if L7_8 <= A0_1 then
      mp.set_mpattribute(A2_3 .. L7_8)
      break
    end
  end
end
SetAttributeFromClassifierScoresEx = L1_0
