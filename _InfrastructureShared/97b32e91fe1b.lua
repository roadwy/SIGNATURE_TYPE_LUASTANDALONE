local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = string
L1_1 = L1_1.lower
L2_2 = bm
L2_2 = L2_2.get_imagepath
L8_8 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2())
L2_2 = nil
if L1_1 ~= nil then
  if L3_3 > 3 then
    L2_2 = L3_3
  end
end
if L3_3 then
  L0_0 = L3_3.utf8p2
elseif L3_3 then
  L0_0 = L3_3.utf8p2
end
if L0_0 ~= nil then
  if L3_3 > 3 then
    for L6_6 in L3_3(L4_4, L5_5) do
      if L6_6 ~= nil then
        L7_7 = string
        L7_7 = L7_7.len
        L8_8 = L6_6
        L7_7 = L7_7(L8_8)
        if L7_7 >= 1 then
          L7_7 = string
          L7_7 = L7_7.sub
          L8_8 = L6_6
          L7_7 = L7_7(L8_8, 0, 1)
          if L7_7 ~= "/" then
            L7_7 = sysio
            L7_7 = L7_7.IsFileExists
            L8_8 = L6_6
            L7_7 = L7_7(L8_8)
            if L7_7 then
              L7_7 = bm
              L7_7 = L7_7.add_related_file
              L8_8 = L6_6
              L7_7(L8_8)
            elseif L2_2 ~= nil then
              L7_7 = L2_2
              L8_8 = L6_6
              L7_7 = L7_7 .. L8_8
              L8_8 = sysio
              L8_8 = L8_8.IsFileExists
              L8_8 = L8_8(L7_7)
              if L8_8 then
                L8_8 = bm
                L8_8 = L8_8.add_related_file
                L8_8(L6_6)
              end
            end
          end
        end
      end
    end
  end
end
if L4_4 then
else
end
if L3_3 ~= nil then
  if L4_4 > 3 then
    for L7_7 in L4_4(L5_5, L6_6) do
      if L7_7 ~= nil then
        L8_8 = string
        L8_8 = L8_8.len
        L8_8 = L8_8(L7_7)
        if L8_8 >= 1 then
          L8_8 = string
          L8_8 = L8_8.sub
          L8_8 = L8_8(L7_7, 0, 1)
          if L8_8 ~= "/" then
            L8_8 = sysio
            L8_8 = L8_8.IsFileExists
            L8_8 = L8_8(L7_7)
            if L8_8 then
              L8_8 = bm
              L8_8 = L8_8.add_related_file
              L8_8(L7_7)
            elseif L2_2 ~= nil then
              L8_8 = L2_2
              L8_8 = L8_8 .. L7_7
              if sysio.IsFileExists(L8_8) then
                bm.add_related_file(L7_7)
              end
            end
          end
        end
      end
    end
  end
end
return L4_4
