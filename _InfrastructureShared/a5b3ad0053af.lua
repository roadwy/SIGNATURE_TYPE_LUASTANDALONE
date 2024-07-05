local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
        L0_0 = this_sigattrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.utf8p1
        if L0_0 ~= nil then
          L0_0 = this_sigattrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.utf8p1
          if L0_0 ~= nil then
            L0_0 = this_sigattrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.utf8p1
            if L0_0 ~= nil then
              L0_0 = this_sigattrlog
              L0_0 = L0_0[8]
              L0_0 = L0_0.utf8p1
              if L0_0 ~= nil then
                L0_0 = this_sigattrlog
                L0_0 = L0_0[8]
                L0_0 = L0_0.utf8p2
                if L0_0 ~= nil then
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
                  L4_4 = string
                  L4_4 = L4_4.lower
                  L5_5 = this_sigattrlog
                  L5_5 = L5_5[8]
                  L5_5 = L5_5.utf8p2
                  L4_4 = L4_4(L5_5)
                  L5_5 = string
                  L5_5 = L5_5.match
                  L6_6 = L2_2
                  L7_7 = "[^/]+$"
                  L5_5 = L5_5(L6_6, L7_7)
                  L6_6 = string
                  L6_6 = L6_6.match
                  L7_7 = L2_2
                  L6_6 = L6_6(L7_7, "/.*/")
                  L7_7 = "."
                  L7_7 = L7_7 .. L5_5 .. ".e"
                  L7_7 = L6_6 .. L7_7
                  if L1_1 == L7_7 and L0_0 == L7_7 and L3_3 == L2_2 and L4_4 == L1_1 then
                    return mp.INFECTED
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
