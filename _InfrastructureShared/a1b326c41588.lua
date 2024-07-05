local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.wp1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[2]
      L0_0 = L0_0.wp1
      if L0_0 ~= nil then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[1]
        L1_1 = L1_1.utf8p1
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[2]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L2_2 = string
        L2_2 = L2_2.match
        L3_3 = L0_0
        L4_4 = "\\microsoft\\(%a+)\\(%a+)%.dll"
        L3_3 = L2_2(L3_3, L4_4)
        L4_4 = string
        L4_4 = L4_4.match
        L4_4 = L4_4(L1_1, "\\microsoft\\(%a+)\\(%a+)%.exe")
        if L2_2 and L3_3 and L4_4 and L4_4(L1_1, "\\microsoft\\(%a+)\\(%a+)%.exe") and L2_2 == L4_4 and string.sub(L2_2, 0, -3) == L3_3 and string.sub(L4_4, 0, -2) == L4_4(L1_1, "\\microsoft\\(%a+)\\(%a+)%.exe") then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
