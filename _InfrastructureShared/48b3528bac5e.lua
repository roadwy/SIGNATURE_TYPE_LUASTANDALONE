local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = MpCommon
    L1_1 = L1_1.GetPersistContextCountNoPath
    L1_1 = L1_1(L2_2)
    if L1_1 > 0 then
      L1_1 = MpCommon
      L1_1 = L1_1.GetPersistContextNoPath
      L1_1 = L1_1(L2_2)
      if L1_1 then
        for L5_5, L6_6 in L2_2(L3_3) do
          L7_7 = string
          L7_7 = L7_7.match
          L7_7 = L7_7(L6_6, "\\([^\\]+)$")
          if string.find(L0_0, L7_7, 1, true) then
            bm.add_action("EmsScan", 3000)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
