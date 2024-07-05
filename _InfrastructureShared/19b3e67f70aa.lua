local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p1
    L1_1 = false
    L2_2 = {
      L3_3,
      L4_4,
      L5_5,
      L6_6,
      L7_7,
      "TELPER:"
    }
    L6_6 = "ALFPER:"
    L7_7 = "SLFPER:"
    for L6_6, L7_7 in L3_3(L4_4) do
      if string.sub(L0_0, 1, string.len(L7_7)) == L7_7 then
        L1_1 = true
        break
      end
    end
    if not L1_1 then
      return L3_3
    end
    L3_3(L4_4, L5_5)
    L3_3(L4_4, L5_5)
    L6_6 = bm
    L6_6 = L6_6.RelatedStringBMReport
    L3_3(L4_4, L5_5, L6_6)
    return L3_3
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
