local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p2
  end
end
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
    L7_7 = L2_2()
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2())
    L2_2 = nil
    if L1_1 ~= nil then
      if L3_3 > 3 then
        L2_2 = L3_3
      end
    end
    for L6_6 in L3_3(L4_4, L5_5) do
      if L6_6 ~= nil then
        L7_7 = string
        L7_7 = L7_7.len
        L7_7 = L7_7(L6_6)
        if L7_7 >= 1 then
          L7_7 = string
          L7_7 = L7_7.sub
          L7_7 = L7_7(L6_6, 0, 1)
          if L7_7 ~= "/" then
            L7_7 = sysio
            L7_7 = L7_7.IsFileExists
            L7_7 = L7_7(L6_6)
            if L7_7 then
              L7_7 = bm
              L7_7 = L7_7.add_related_file
              L7_7(L6_6)
            elseif L2_2 ~= nil then
              L7_7 = L2_2
              L7_7 = L7_7 .. L6_6
              if sysio.IsFileExists(L7_7) then
                bm.add_related_file(L6_6)
              end
            end
          end
        end
      end
    end
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L2_2 = sysio
    L2_2 = L2_2.IsFileExists
    L2_2 = L2_2(L3_3)
    if L2_2 then
      L2_2 = bm
      L2_2 = L2_2.add_related_file
      L2_2(L3_3)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
