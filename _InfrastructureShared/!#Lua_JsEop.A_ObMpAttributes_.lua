local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = {
  L1_1,
  L2_2,
  L3_3,
  L4_4
}
L1_1 = "ALF:Trojan:HTML/Phish"
L1_1 = 0
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = mp
  L7_7 = L7_7.enum_mpattributesubstring
  L8_8 = L6_6
  L7_7 = L7_7(L8_8)
  if L7_7 ~= nil then
    L8_8 = type
    L9_9 = L7_7
    L8_8 = L8_8(L9_9)
    if L8_8 == "table" then
      L8_8 = #L7_7
      L1_1 = L1_1 + L8_8
      if L1_1 >= 3 then
        L8_8 = mp
        L8_8 = L8_8.INFECTED
        return L8_8
      end
    end
  end
end
L7_7 = "SCRIPT:JS/CryptoJS"
L8_8 = "SCRIPT:HTML/Redirec"
L9_9 = "SCRIPT:JS/Eval"
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = mp
  L9_9 = L9_9.enum_mpattributesubstring
  L9_9 = L9_9(L8_8)
  if L9_9 ~= nil and type(L9_9) == "table" then
    if L1_1 == 0 and L3_3 >= 5 then
      return mp.INFECTED
    elseif L1_1 >= 1 and L3_3 >= 4 then
      return mp.INFECTED
    end
  end
end
return L4_4
