local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.utf8p2
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
        L2_2 = L2_2[3]
        L2_2 = L2_2.utf8p2
        L1_1 = L1_1(L2_2)
        L2_2 = string
        L2_2 = L2_2.lower
        L3_3 = this_sigattrlog
        L3_3 = L3_3[1]
        L3_3 = L3_3.utf8p2
        L2_2 = L2_2(L3_3)
        L3_3 = string
        L3_3 = L3_3.find
        L4_4 = L0_0
        L3_3 = L3_3(L4_4, L1_1, 1, true)
        if L3_3 then
          L3_3 = mp
          L3_3 = L3_3.ContextualExpandEnvironmentVariables
          L4_4 = L2_2
          L3_3 = L3_3(L4_4)
          L4_4 = string
          L4_4 = L4_4.lower
          L4_4 = L4_4(L3_3)
          if string.find(L4_4, "\\program files", 1, true) or string.find(L4_4, "\\windows\\", 1, true) then
            return mp.CLEAN
          end
          if sysio.IsFileExists(L3_3) then
            bm.add_related_file(L3_3)
          end
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
