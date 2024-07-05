local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.len
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 > 3 then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = bm
      L2_2 = L2_2.get_imagepath
      L9_9 = L2_2()
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L2_2())
      L2_2 = nil
      if L1_1 ~= nil then
        if L3_3 > 3 then
          L2_2 = L3_3
        end
      end
      for L6_6 in L3_3(L4_4, L5_5) do
        L7_7 = string
        L7_7 = L7_7.match
        L8_8 = L6_6
        L9_9 = "([^\\]-)[^\\%.]+$"
        L7_7 = L7_7(L8_8, L9_9)
        L8_8 = "xoml"
        L7_7 = L7_7 .. L8_8
        L8_8 = sysio
        L8_8 = L8_8.IsFileExists
        L9_9 = L6_6
        L8_8 = L8_8(L9_9)
        if L8_8 then
          L8_8 = bm
          L8_8 = L8_8.add_related_file
          L9_9 = L6_6
          L8_8(L9_9)
          L8_8 = sysio
          L8_8 = L8_8.IsFileExists
          L9_9 = L7_7
          L8_8 = L8_8(L9_9)
          if L8_8 then
            L8_8 = bm
            L8_8 = L8_8.add_related_file
            L9_9 = L7_7
            L8_8(L9_9)
          end
        elseif L2_2 ~= nil then
          L8_8 = string
          L8_8 = L8_8.len
          L9_9 = L2_2
          L8_8 = L8_8(L9_9)
          if L8_8 > 3 then
            L8_8 = L2_2
            L9_9 = L6_6
            L8_8 = L8_8 .. L9_9
            L9_9 = sysio
            L9_9 = L9_9.IsFileExists
            L9_9 = L9_9(L8_8)
            if L9_9 then
              L9_9 = bm
              L9_9 = L9_9.add_related_file
              L9_9(L6_6)
            end
            L9_9 = L2_2
            L9_9 = L9_9 .. L7_7
            if sysio.IsFileExists(L9_9) then
              bm.add_related_file(L9_9)
            end
          end
        end
      end
    end
  end
end
L0_0 = bm
L0_0 = L0_0.add_action
L1_1 = "EmsScan"
L2_2 = 20000
L0_0(L1_1, L2_2)
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
