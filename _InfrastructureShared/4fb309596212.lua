local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = bm
      L0_0 = L0_0.get_imagepath
      L0_0 = L0_0()
      L1_1 = L0_0
      L0_0 = L0_0.lower
      L0_0 = L0_0(L1_1)
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L3_3 = "/bin/find"
      L4_4 = 1
      L5_5 = true
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if not L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L2_2 = L2_2.utf8p2
      L1_1 = L1_1(L2_2)
      L2_2 = mp
      L2_2 = L2_2.GetExecutablesFromCommandLine
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = this_sigattrlog
      L4_4 = L4_4[2]
      L4_4 = L4_4.utf8p2
      L3_3 = L3_3(L4_4)
      L4_4 = string
      L4_4 = L4_4.lower
      L5_5 = this_sigattrlog
      L5_5 = L5_5[3]
      L5_5 = L5_5.utf8p2
      L4_4 = L4_4(L5_5)
      if L2_2 ~= nil and L3_3 ~= nil and L4_4 ~= nil then
        L5_5 = nil
        for L9_9, L10_10 in L6_6(L7_7) do
          L5_5 = tostring(L10_10) .. ".crypt"
          if string.find(L3_3, L5_5, 1, true) and string.find(L4_4, L5_5, 1, true) and string.find(L4_4, tostring(L10_10), 1, true) then
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
