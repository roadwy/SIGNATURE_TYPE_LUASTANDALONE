local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[6]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[7]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[8]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.utf8p1
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L2_2 = string
        L2_2 = L2_2.lower
        L3_3 = this_sigattrlog
        L3_3 = L3_3[7]
        L3_3 = L3_3.utf8p1
        L2_2 = L2_2(L3_3)
        L3_3 = string
        L3_3 = L3_3.lower
        L4_4 = this_sigattrlog
        L4_4 = L4_4[8]
        L4_4 = L4_4.utf8p1
        L3_3 = L3_3(L4_4)
        L4_4 = bm
        L4_4 = L4_4.get_process_relationships
        L5_5 = L4_4()
        for L9_9, L10_10 in L6_6(L7_7) do
          L11_11 = string
          L11_11 = L11_11.lower
          L11_11 = L11_11(L10_10.cmd_line)
          if string.find(L11_11, L0_0, 1, true) and string.find(L11_11, L1_1, 1, true) and string.find(L11_11, L2_2, 1, true) and string.find(L11_11, L3_3, 1, true) then
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
